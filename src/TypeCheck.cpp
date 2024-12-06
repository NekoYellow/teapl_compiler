#include "TypeCheck.h"

//global tabels
//typeMap func2retType; // function name to return type

// global token ids to type
typeMap g_token2Type; 

// local token ids to type
typeMap local_token2Type;
// stack of local typeMaps
vector<typeMap*> token2Type;


paramMemberMap func2Param;
paramMemberMap struct2Members;


// private util functions
void error_print(std::ostream& out, A_pos p, string info)
{
    out << "Typecheck error in line " << p->line << ", col " << p->col << ": " << info << "\n" << std::endl;
    exit(0);
}


void print_token_map(typeMap* map){
    for(auto it = map->begin(); it != map->end(); it++){
        std::cout << it->first << " : ";
        switch (it->second->type->type)
        {
        case A_dataType::A_nativeTypeKind:
            switch (it->second->type->u.nativeType)
            {
            case A_nativeType::A_intTypeKind:
                std::cout << "int";
                break;
            default:
                break;
            }
            break;
        case A_dataType::A_structTypeKind:
            std::cout << *(it->second->type->u.structType);
            break;
        default:
            break;
        }
        switch(it->second->isVarArrFunc){
            case 0:
                std::cout << " scalar";
                break;
            case 1:
                std::cout << " array";
                break;
            case 2:
                std::cout << " function";
                break;
        }
        std::cout << std::endl;
    }
}


void print_token_maps(){
    std::cout << "global token2Type:" << std::endl;
    print_token_map(&g_token2Type);
    std::cout << "local token2Type:" << std::endl;
    print_token_map(&local_token2Type);
}


bool comp_aA_type(aA_type target, aA_type t){
    if(!target || !t)
        return false;
    if(target->type != t->type)
        return false;
    if(target->type == A_dataType::A_nativeTypeKind)
        if(target->u.nativeType != t->u.nativeType)
            return false;
    if(target->type == A_dataType::A_structTypeKind)
        if(*target->u.structType != *t->u.structType)
            return false;
    return true;
}


bool comp_tc_type(tc_type target, tc_type t){
    if(!target || !t)
        return false;
    
    // arr kind first
    if (target->isVarArrFunc && t->isVarArrFunc == 0)
        return false;
    
    // if target type is nullptr, alwayse ok
    return comp_aA_type(target->type, t->type);
}


tc_type tc_Type(aA_type t, uint isVarArrFunc){
    tc_type ret = new tc_type_;
    ret->type = t;
    ret->isVarArrFunc = isVarArrFunc;
    return ret;
}


tc_type tc_Type(aA_varDecl vd){
    if(vd->kind == A_varDeclType::A_varDeclScalarKind)
        return tc_Type(vd->u.declScalar->type, 0);
    else if(vd->kind == A_varDeclType::A_varDeclArrayKind)
        return tc_Type(vd->u.declArray->type, 1);
    return nullptr;
}


bool token_is_defined(const string &name) {
    return token2Type.back()->count(name);
}


tc_type& type_of_token(const string &name) {
    return (*token2Type.back())[name];
}


// public functions
void check_Prog(std::ostream& out, aA_program p)
{
    token2Type.push_back(&g_token2Type);
    for (auto ele : p->programElements)
    {
        if(ele->kind == A_programVarDeclStmtKind){
            check_VarDecl(out, ele->u.varDeclStmt);
        }else if (ele->kind == A_programStructDefKind){
            check_StructDef(out, ele->u.structDef);
        }
    }
    
    for (auto ele : p->programElements){
        if(ele->kind == A_programFnDeclStmtKind){
            check_FnDeclStmt(out, ele->u.fnDeclStmt);
        }
        else if (ele->kind == A_programFnDefKind){
            check_FnDecl(out, ele->u.fnDef->fnDecl);
        }
    }

    for (auto ele : p->programElements){
        if(ele->kind == A_programFnDefKind){
            check_FnDef(out, ele->u.fnDef);
        }
        else if (ele->kind == A_programNullStmtKind){
            // do nothing
        }
    }

    out << "Typecheck passed!\n" << std::endl;
    return;
}


void check_VarDecl(std::ostream& out, aA_varDeclStmt vd)
{
    if (!vd)
        return;
    string name;
    if (vd->kind == A_varDeclStmtType::A_varDeclKind){
        // decl only
        aA_varDecl vdecl = vd->u.varDecl;
        if(vdecl->kind == A_varDeclType::A_varDeclScalarKind){
            name = *vdecl->u.declScalar->id;
            if (token_is_defined(name)) {
                error_print(out, vdecl->pos, "duplicate variable definition");
            }
            type_of_token(name) = tc_Type(vdecl);
        }else if (vdecl->kind == A_varDeclType::A_varDeclArrayKind){
            name = *vdecl->u.declArray->id;
            if (token_is_defined(name)) {
                error_print(out, vdecl->pos, "duplicate variable definition");
            }
            type_of_token(name) = tc_Type(vdecl);
        }
    }
    else if (vd->kind == A_varDeclStmtType::A_varDefKind){
        // decl and def
        aA_varDef vdef = vd->u.varDef;
        if (vdef->kind == A_varDefType::A_varDefScalarKind){
            auto vds = vdef->u.defScalar;
            name = *vds->id;
            // boolExpr not allowed in assignment
            if (vds->val->kind != A_rightValType::A_arithExprValKind) {
                error_print(out, vdef->pos, "invalid value type");
            }
            auto rtp = check_ArithExpr(out, vds->val->u.arithExpr);
            // allow omited type
            auto ltp = vds->type == nullptr ? rtp : tc_Type(vds->type, 0);
            // if declared before
            if (token_is_defined(name)) {
                auto oldtp = type_of_token(name);
                // if the former declaration specified type and differred from this
                if (oldtp->type != nullptr && !comp_tc_type(ltp, oldtp)) {
                    error_print(out, vdef->pos, "conflict variable type");
                }
            }
            type_of_token(name) = ltp;
        }else if (vdef->kind == A_varDefType::A_varDefArrayKind){
            auto vda = vdef->u.defArray;
            name = *vda->id;
            // length of init list should match with array
            if ((size_t)vda->len != vda->vals.size()) {
                error_print(out, vdef->pos, "value list length cannot match with array");
            }
            // boolExpr not allowed in assignment
            for (auto &&ae: vda->vals) {
                if (ae->kind != A_rightValType::A_arithExprValKind) {
                    error_print(out, vdef->pos, "invalid value type");
                }
            }
            auto rtp = check_ArithExpr(out, vda->vals[0]->u.arithExpr)->type;
            // allow omited type
            auto atp = vda->type == nullptr ? rtp : vda->type;
            // check all values in list are of the same type
            for (auto ae: vda->vals) {
                if (!comp_aA_type(check_ArithExpr(out, ae->u.arithExpr)->type, atp)) {
                    error_print(out, vdef->pos, "value list elements have different types");
                }
            }
            auto tp = tc_Type(atp, 1);
            // if declared before
            if (token_is_defined(name)) {
                auto oldtp = type_of_token(name);
                // if the former declaration specified type and differred from this
                if (oldtp->type != nullptr && !comp_tc_type(tp, oldtp)) {
                    error_print(out, vdef->pos, "conflict variable type");
                }
            }
            type_of_token(name) = tp;
        }
    }
    return;
}


void check_StructDef(std::ostream& out, aA_structDef sd)
{
    if (!sd)
        return;
    string name = *sd->id;
    if (struct2Members.find(name) != struct2Members.end())
        error_print(out, sd->pos, "This id is already defined!");
    struct2Members[name] = &(sd->varDecls);
    return;
}


void check_FnDecl(std::ostream& out, aA_fnDecl fd)
{
    if (!fd)
        return;
    string name = *fd->id;

    // if already declared, should match
    if (func2Param.find(name) != func2Param.end()){
        // is function ret val matches
        if (!comp_aA_type(fd->type, g_token2Type[name]->type)) {
            error_print(out, fd->pos, "return type cannot match with declaration");
        }
        // is function params matches decl
        auto &&p1 = fd->paramDecl->varDecls;
        auto &&p2 = *func2Param[name];
        // should have the same length
        if (p1.size() != p2.size()) {
            error_print(out, fd->pos, "param number differs from previous declaration");
        }
        // element-wise checking
        for (size_t i = 0; i < p1.size(); i++) {
            if (p1[i]->kind != p2[i]->kind) {
                error_print(out, fd->pos, "params cannot match with previous declaration");
            }
            if (p1[i]->kind == A_varDeclType::A_varDeclScalarKind) {
                if (!comp_aA_type(p1[i]->u.declScalar->type, p2[i]->u.declScalar->type)) {
                    error_print(out, fd->pos, "params cannot match with previous declaration");
                }
            } else {
                if (!comp_aA_type(p1[i]->u.declArray->type, p2[i]->u.declArray->type)) {
                    error_print(out, fd->pos, "params cannot match with previous declaration");
                }
            }
        }
    }else{
        // if not defined
        auto &&p = fd->paramDecl->varDecls;
        // check duplicate param
        // std::unordered_map<string, bool> vis;
        // for (size_t i = 0; i < p.size(); i++) {
        //     auto &&name = p[i]->kind == A_varDeclType::A_varDeclScalarKind ?
        //                     *p[i]->u.declScalar->id : *p[i]->u.declArray->id;
        //     if (vis[name]) {
        //         error_print(out, fd->pos, "duplicate param declaration");
        //     }
        //     vis[name] = true;
        // }
        // register this in global tables
        func2Param[name] = &fd->paramDecl->varDecls;
        g_token2Type[name] = tc_Type(fd->type, 2);
    }
    return;
}


void check_FnDeclStmt(std::ostream& out, aA_fnDeclStmt fd)
{
    if (!fd)
        return;
    check_FnDecl(out, fd->fnDecl);
    return;
}


void check_FnDef(std::ostream& out, aA_fnDef fd)
{
    if (!fd)
        return;
    // should match if declared
    check_FnDecl(out, fd->fnDecl);
    // add params to local tokenmap, func params override global ones
    local_token2Type = g_token2Type;
    for (aA_varDecl vd : fd->fnDecl->paramDecl->varDecls)
    {
        if (vd->kind == A_varDeclType::A_varDeclScalarKind) {
            // check duplication with global tokens (forbid instead of override)
            if (g_token2Type.count(*vd->u.declScalar->id)) {
                // print_token_map(&g_token2Type);
                error_print(out, vd->pos, "duplicate variable definition in param");
            }
            local_token2Type[*vd->u.declScalar->id] = tc_Type(vd->u.declScalar->type, 0);
        } else {
            // check duplication with global tokens
            if (g_token2Type.count(*vd->u.declArray->id)) {
                error_print(out, vd->pos, "duplicate variable definition in param");
            }
            local_token2Type[*vd->u.declArray->id] = tc_Type(vd->u.declArray->type, 1);
        }
    }

    token2Type.push_back(&local_token2Type);
    for (aA_codeBlockStmt stmt : fd->stmts)
    {
        check_CodeblockStmt(out, stmt);
        // return value type should match
        if (stmt->kind == A_codeBlockStmtType::A_returnStmtKind) {
            auto &&rv = stmt->u.returnStmt->retVal;
            if (rv == nullptr) {
                if (fd->fnDecl->type != nullptr) {
                    error_print(out, stmt->pos, "non-void function doesn't return a value");
                }
                return;
            }
            if (rv->kind != A_rightValType::A_arithExprValKind) {
                error_print(out, stmt->pos, "return value should be arithmic expression");
            }
            auto tp = check_ArithExpr(out, rv->u.arithExpr);
            if (!comp_aA_type(tp->type, fd->fnDecl->type)) {
                error_print(out, stmt->pos, "return value has wrong type");
            }
        }
    }
    token2Type.pop_back();

    return;
}


void check_CodeblockStmt(std::ostream& out, aA_codeBlockStmt cs){
    if(!cs)
        return;
    // variables declared in a code block should not duplicate with outer ones.
    switch (cs->kind)
    {
    case A_codeBlockStmtType::A_varDeclStmtKind:
        check_VarDecl(out, cs->u.varDeclStmt);
        break;
    case A_codeBlockStmtType::A_assignStmtKind:
        check_AssignStmt(out, cs->u.assignStmt);
        break;
    case A_codeBlockStmtType::A_ifStmtKind:
        check_IfStmt(out, cs->u.ifStmt);
        break;
    case A_codeBlockStmtType::A_whileStmtKind:
        check_WhileStmt(out, cs->u.whileStmt);
        break;
    case A_codeBlockStmtType::A_callStmtKind:
        check_CallStmt(out, cs->u.callStmt);
        break;
    case A_codeBlockStmtType::A_returnStmtKind:
        check_ReturnStmt(out, cs->u.returnStmt);
        break;
    default:
        break;
    }
    return;
}


void check_AssignStmt(std::ostream& out, aA_assignStmt as){
    if(!as)
        return;
    string name;
    switch (as->leftVal->kind)
    {
        case A_leftValType::A_varValKind:{
            name = *as->leftVal->u.id;
            if (!token_is_defined(name)) {
                error_print(out, as->pos, "variable not defined");
            }
            if (as->rightVal->kind != A_rightValType::A_arithExprValKind) {
                error_print(out, as->pos, "the value to assign has invalid type");
            }
            auto rtp = check_ArithExpr(out, as->rightVal->u.arithExpr);
            auto ltp = type_of_token(name);
            if (ltp == nullptr) {
                ltp = rtp;
            }
            if (!comp_tc_type(ltp, rtp)) {
                error_print(out, as->pos, "assigning value of a different type to variable");
            }
            type_of_token(name) = ltp;
        }
            break;
        case A_leftValType::A_arrValKind:{
            name = *as->leftVal->u.arrExpr->arr->u.id;
            check_ArrayExpr(out, as->leftVal->u.arrExpr);
            if (as->rightVal->kind != A_rightValType::A_arithExprValKind) {
                error_print(out, as->pos, "the value to assign has invalid type");
            }
            auto rtp = check_ArithExpr(out, as->rightVal->u.arithExpr);
            auto ltp = type_of_token(name);
            if (ltp == nullptr) {
                ltp = tc_Type(rtp->type, 1);
            }
            if (!comp_aA_type(ltp->type, rtp->type)) {
                error_print(out, as->pos, "assigning value of a different type to variable");
            }
            type_of_token(name) = ltp;
        }
            break;
        case A_leftValType::A_memberValKind:{
            name = *as->leftVal->u.memberExpr->structId->u.id;
            if (!token_is_defined(name)) {
                error_print(out, as->pos, "variable not defined");
            }
            if (as->rightVal->kind != A_rightValType::A_arithExprValKind) {
                error_print(out, as->pos, "the value to assign has invalid type");
            }
            auto rtp = check_ArithExpr(out, as->rightVal->u.arithExpr);
            auto ltp = check_MemberExpr(out, as->leftVal->u.memberExpr); // no deducing
            if (!comp_tc_type(ltp, rtp)) {
                error_print(out, as->pos, "assigning value of a different type to variable");
            }
        }
            break;
    }
    return;
}


void check_ArrayExpr(std::ostream& out, aA_arrayExpr ae){
    if(!ae)
        return;
    string name = *ae->arr->u.id;
    // check array name
    if (!token_is_defined(name)) {
        error_print(out, ae->pos, "variable not defined");
    }
        
    // check index
    if (ae->idx->kind == A_indexExprKind::A_idIndexKind) {
        if (!token2Type.back()->count(*ae->idx->u.id)) {
            error_print(out, ae->pos, "variable not defined");
        }
        if (type_of_token(*ae->idx->u.id)->type->type != A_dataType::A_nativeTypeKind) {
            error_print(out, ae->pos, "index should be int");
        }
        if (type_of_token(*ae->idx->u.id)->type->u.nativeType != A_nativeType::A_intTypeKind) {
            error_print(out, ae->pos, "index should be int");
        }
    } else {
        if (ae->idx->u.num < 0) {
            error_print(out, ae->pos, "index should not be negative");
        }
    }
    return;
}

 
tc_type check_MemberExpr(std::ostream& out, aA_memberExpr me){
    // check if the member exists and return the tyep of the member
    if(!me)
        return nullptr;
    string name = *me->structId->u.id;
    // check var name
    if (!token_is_defined(name)) {
        error_print(out, me->pos, "variable not dedined");
    }
    // check var type
    if (type_of_token(name)->type->type != A_dataType::A_structTypeKind) {
        error_print(out, me->pos, "taking member of non-struct variable");
    }
    // check struct name
    string sid = *type_of_token(name)->type->u.structType;
    if (!struct2Members.count(sid)) {
        error_print(out, me->pos, "struct not defined");
    }
    
    // check member name
    for (auto &&vd : *struct2Members[sid]) {
        if (vd->kind == A_varDeclType::A_varDeclScalarKind) {
            if (*vd->u.declScalar->id == *me->memberId) {
                return tc_Type(vd->u.declScalar->type, 0);
            }
        } else {
            if (*vd->u.declArray->id == *me->memberId) {
                return tc_Type(vd->u.declArray->type, 1);
            }
        }
    }
    
    error_print(out, me->pos, "member not defined");
    return nullptr;
}


void check_IfStmt(std::ostream& out, aA_ifStmt is){
    if(!is)
        return;
    check_BoolUnit(out, is->boolUnit);

    local_token2Type = *token2Type.back();
    token2Type.push_back(&local_token2Type);
    for(aA_codeBlockStmt s : is->ifStmts){
        check_CodeblockStmt(out, s);
    }
    token2Type.pop_back();

    local_token2Type = *token2Type.back();
    token2Type.push_back(&local_token2Type);
    for(aA_codeBlockStmt s : is->elseStmts){
        check_CodeblockStmt(out, s);
    }
    token2Type.pop_back();

    return;
}


void check_BoolExpr(std::ostream& out, aA_boolExpr be){
    if(!be)
        return;
    switch (be->kind)
    {
    case A_boolExprType::A_boolBiOpExprKind:
        check_BoolExpr(out, be->u.boolBiOpExpr->left);
        check_BoolExpr(out, be->u.boolBiOpExpr->right);
        break;
    case A_boolExprType::A_boolUnitKind:
        check_BoolUnit(out, be->u.boolUnit);
        break;
    default:
        break;
    }
    return;
}


void check_BoolUnit(std::ostream& out, aA_boolUnit bu){
    if(!bu)
        return;
    switch (bu->kind)
    {
        case A_boolUnitType::A_comOpExprKind:{
            auto ltp = check_ExprUnit(out, bu->u.comExpr->left);
            auto rtp = check_ExprUnit(out, bu->u.comExpr->right);
            if (!comp_tc_type(ltp, rtp)) {
                error_print(out, bu->pos, "comparing between different types");
            }
        }
            break;
        case A_boolUnitType::A_boolExprKind:
            check_BoolExpr(out, bu->u.boolExpr);
            break;
        case A_boolUnitType::A_boolUOpExprKind:
            check_BoolUnit(out, bu->u.boolUOpExpr->cond);
            break;
        default:
            break;
    }
    return;
}


tc_type check_ExprUnit(std::ostream& out, aA_exprUnit eu){
    // return the aA_type of expr eu
    if(!eu)
        return nullptr;
    tc_type ret;
    switch (eu->kind)
    {
        case A_exprUnitType::A_idExprKind:{
            ret = type_of_token(*eu->u.id);
        }
            break;
        case A_exprUnitType::A_numExprKind:{
            aA_type numt = new aA_type_;
            numt->pos = eu->pos;
            numt->type = A_dataType::A_nativeTypeKind;
            numt->u.nativeType = A_nativeType::A_intTypeKind;
            ret = tc_Type(numt, 0);
        }
            break;
        case A_exprUnitType::A_fnCallKind:{
            check_FuncCall(out, eu->u.callExpr);
            // check_FuncCall will check if the function is defined
            ret = type_of_token(*eu->u.callExpr->fn);
            ret->isVarArrFunc = 0;
        }
            break;
        case A_exprUnitType::A_arrayExprKind:{
            check_ArrayExpr(out, eu->u.arrayExpr);
            ret = type_of_token(*eu->u.arrayExpr->arr->u.id);
            ret->isVarArrFunc = 0;
        }
            break;
        case A_exprUnitType::A_memberExprKind:{
            ret = check_MemberExpr(out, eu->u.memberExpr);
        }
            break;
        case A_exprUnitType::A_arithExprKind:{
            ret = check_ArithExpr(out, eu->u.arithExpr);
        }
            break;
        case A_exprUnitType::A_arithUExprKind:{
            ret = check_ExprUnit(out, eu->u.arithUExpr->expr);
        }
            break;
    }
    return ret;
}


tc_type check_ArithExpr(std::ostream& out, aA_arithExpr ae){
    if(!ae)
        return nullptr;
    tc_type ret;
    switch (ae->kind)
    {
        case A_arithExprType::A_arithBiOpExprKind:{
            ret = check_ArithExpr(out, ae->u.arithBiOpExpr->left);
            tc_type rightTyep = check_ArithExpr(out, ae->u.arithBiOpExpr->right);
            if(ret->type->type > 0 || ret->type->type != A_dataType::A_nativeTypeKind || ret->type->u.nativeType != A_nativeType::A_intTypeKind ||
            rightTyep->type->type > 0 || rightTyep->type->type != A_dataType::A_nativeTypeKind || rightTyep->type->u.nativeType != A_nativeType::A_intTypeKind)
                error_print(out, ae->pos, "Only int can be arithmetic expression operation values!");
        }
            break;
        case A_arithExprType::A_exprUnitKind:
            ret = check_ExprUnit(out, ae->u.exprUnit);
            break;
    }
    return ret;
}


void check_FuncCall(std::ostream& out, aA_fnCall fc){
    if(!fc)
        return;
    // check if function defined
    string func_name = *fc->fn;

    if (!token_is_defined(func_name) || func2Param.find(func_name) == func2Param.end()) {
        error_print(out, fc->pos, "function is not defined");
    }
        
    // check if parameter list matches
    if (fc->vals.size() != func2Param[func_name]->size()) {
        error_print(out, fc->pos, "incorrect number of args");
    }
    for(size_t i = 0; i < fc->vals.size(); i++){
        if (fc->vals[i]->kind != A_rightValType::A_arithExprValKind) {
            error_print(out, fc->vals[i]->pos, "invalid arg");
        }
        auto &&atp = check_ArithExpr(out, fc->vals[i]->u.arithExpr);
        auto &&vd = (*func2Param[func_name])[i];
        if (vd->kind == A_varDeclType::A_varDeclScalarKind) {
            if (!comp_tc_type(atp, tc_Type(vd->u.declScalar->type, 0))) {
                error_print(out, fc->vals[i]->pos, "type of arg cannot match with definition");
            }
        } else {
            if (!comp_tc_type(atp, tc_Type(vd->u.declArray->type, 1))) {
                error_print(out, fc->vals[i]->pos, "type of arg cannot match with definition");
            }
        }
    }
    return ;
}


void check_WhileStmt(std::ostream& out, aA_whileStmt ws){
    if(!ws)
        return;
    check_BoolUnit(out, ws->boolUnit);

    local_token2Type = *token2Type.back();
    token2Type.push_back(&local_token2Type);
    for(aA_codeBlockStmt s : ws->whileStmts){
        check_CodeblockStmt(out, s);
    }
    token2Type.pop_back();
        
    return;
}


void check_CallStmt(std::ostream& out, aA_callStmt cs){
    if(!cs)
        return;
    check_FuncCall(out, cs->fnCall);
    return;
}


void check_ReturnStmt(std::ostream& out, aA_returnStmt rs){
    if(!rs)
        return;
    return;
}

