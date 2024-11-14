; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@TOKEN_NUM = global i32 0
@TOKEN_OTHER = global i32 1
@last_char = global i32 32
@num = global i32 0
@other = global i32 0
@cur_token = global i32 0
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @after_main, ptr null }]
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@_sysy_us = dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 4
@_sysy_s = dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 4
@_sysy_m = dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 4
@_sysy_h = dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 4
@_sysy_idx = dso_local local_unnamed_addr global i32 1, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"Timer@%04d-%04d: %dH-%dM-%dS-%dus\0A\00", align 1
@_sysy_l1 = dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 4
@_sysy_l2 = dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"TOTAL: %dH-%dM-%dS-%dus\0A\00", align 1
@_sysy_start = dso_local global %struct.timeval zeroinitializer, align 8
@_sysy_end = dso_local global %struct.timeval zeroinitializer, align 8

define i32 @next_char() {
next_char:
  %r100 = call i32 @getch()
  store i32 %r100, ptr @last_char, align 4
  %r101 = load i32, ptr @last_char, align 4
  ret i32 %r101
}

define i32 @is_space(i32 %r102) {
is_space:
  %r103 = alloca i32, align 4
  store i32 %r102, ptr %r103, align 4
  %r104 = load i32, ptr %r103, align 4
  %r105 = icmp eq i32 %r104, 32
  br i1 %r105, label %bb1, label %bb4

bb4:                                              ; preds = %is_space
  %r106 = load i32, ptr %r103, align 4
  %r107 = icmp eq i32 %r106, 10
  br i1 %r107, label %bb1, label %bb2

bb1:                                              ; preds = %bb4, %is_space
  ret i32 1

bb67:                                             ; No predecessors!
  br label %bb3

bb2:                                              ; preds = %bb4
  ret i32 0

bb3:                                              ; preds = %bb67
  ret i32 0
}

define i32 @is_num(i32 %r108) {
is_num:
  %r109 = alloca i32, align 4
  store i32 %r108, ptr %r109, align 4
  %r110 = load i32, ptr %r109, align 4
  %r111 = icmp sge i32 %r110, 48
  br i1 %r111, label %bb8, label %bb6

bb8:                                              ; preds = %is_num
  %r112 = load i32, ptr %r109, align 4
  %r113 = icmp sle i32 %r112, 57
  br i1 %r113, label %bb5, label %bb6

bb5:                                              ; preds = %bb8
  ret i32 1

bb68:                                             ; No predecessors!
  br label %bb7

bb6:                                              ; preds = %bb8, %is_num
  ret i32 0

bb7:                                              ; preds = %bb68
  ret i32 0
}

define i32 @next_token() {
next_token:
  br label %bb9

bb9:                                              ; preds = %bb10, %next_token
  %r114 = load i32, ptr @last_char, align 4
  %r115 = call i32 @is_space(i32 %r114)
  %r116 = icmp ne i32 %r115, 0
  br i1 %r116, label %bb10, label %bb11

bb10:                                             ; preds = %bb9
  %r117 = call i32 @next_char()
  br label %bb9

bb11:                                             ; preds = %bb9
  %r118 = load i32, ptr @last_char, align 4
  %r119 = call i32 @is_num(i32 %r118)
  %r120 = icmp ne i32 %r119, 0
  br i1 %r120, label %bb12, label %bb13

bb12:                                             ; preds = %bb11
  %r121 = load i32, ptr @last_char, align 4
  %r122 = sub i32 %r121, 48
  store i32 %r122, ptr @num, align 4
  br label %bb15

bb15:                                             ; preds = %bb16, %bb12
  %r123 = call i32 @next_char()
  %r124 = call i32 @is_num(i32 %r123)
  %r125 = icmp ne i32 %r124, 0
  br i1 %r125, label %bb16, label %bb17

bb16:                                             ; preds = %bb15
  %r126 = load i32, ptr @num, align 4
  %r127 = mul i32 %r126, 10
  %r128 = load i32, ptr @last_char, align 4
  %r129 = add i32 %r127, %r128
  %r130 = sub i32 %r129, 48
  store i32 %r130, ptr @num, align 4
  br label %bb15

bb17:                                             ; preds = %bb15
  %r131 = load i32, ptr @TOKEN_NUM, align 4
  store i32 %r131, ptr @cur_token, align 4
  br label %bb14

bb13:                                             ; preds = %bb11
  %r132 = load i32, ptr @last_char, align 4
  store i32 %r132, ptr @other, align 4
  %r133 = call i32 @next_char()
  %r134 = load i32, ptr @TOKEN_OTHER, align 4
  store i32 %r134, ptr @cur_token, align 4
  br label %bb14

bb14:                                             ; preds = %bb13, %bb17
  %r135 = load i32, ptr @cur_token, align 4
  ret i32 %r135
}

define i32 @panic() {
panic:
  call void @putch(i32 112)
  call void @putch(i32 97)
  call void @putch(i32 110)
  call void @putch(i32 105)
  call void @putch(i32 99)
  call void @putch(i32 33)
  call void @putch(i32 10)
  %r136 = sub i32 0, 1
  ret i32 %r136
}

define i32 @get_op_prec(i32 %r137) {
get_op_prec:
  %r138 = alloca i32, align 4
  store i32 %r137, ptr %r138, align 4
  %r139 = load i32, ptr %r138, align 4
  %r140 = icmp eq i32 %r139, 43
  br i1 %r140, label %bb18, label %bb21

bb21:                                             ; preds = %get_op_prec
  %r141 = load i32, ptr %r138, align 4
  %r142 = icmp eq i32 %r141, 45
  br i1 %r142, label %bb18, label %bb19

bb18:                                             ; preds = %bb21, %get_op_prec
  ret i32 10

bb69:                                             ; No predecessors!
  br label %bb20

bb19:                                             ; preds = %bb21
  br label %bb20

bb20:                                             ; preds = %bb19, %bb69
  %r143 = load i32, ptr %r138, align 4
  %r144 = icmp eq i32 %r143, 42
  br i1 %r144, label %bb22, label %bb25

bb25:                                             ; preds = %bb20
  %r145 = load i32, ptr %r138, align 4
  %r146 = icmp eq i32 %r145, 47
  br i1 %r146, label %bb22, label %bb26

bb26:                                             ; preds = %bb25
  %r147 = load i32, ptr %r138, align 4
  %r148 = icmp eq i32 %r147, 37
  br i1 %r148, label %bb22, label %bb23

bb22:                                             ; preds = %bb26, %bb25, %bb20
  ret i32 20

bb70:                                             ; No predecessors!
  br label %bb24

bb23:                                             ; preds = %bb26
  br label %bb24

bb24:                                             ; preds = %bb23, %bb70
  ret i32 0
}

define void @stack_push(ptr %r149, i32 %r150) {
stack_push:
  %r151 = alloca i32, align 4
  store i32 %r150, ptr %r151, align 4
  %r152 = getelementptr i32, ptr %r149, i32 0
  %r153 = getelementptr i32, ptr %r149, i32 0
  %r154 = load i32, ptr %r153, align 4
  %r155 = add i32 %r154, 1
  store i32 %r155, ptr %r152, align 4
  %r156 = alloca i32, align 4
  %r157 = getelementptr i32, ptr %r149, i32 0
  %r158 = load i32, ptr %r157, align 4
  store i32 %r158, ptr %r156, align 4
  %r159 = load i32, ptr %r156, align 4
  %r160 = getelementptr i32, ptr %r149, i32 %r159
  %r161 = load i32, ptr %r151, align 4
  store i32 %r161, ptr %r160, align 4
  ret void
}

define i32 @stack_pop(ptr %r162) {
stack_pop:
  %r163 = alloca i32, align 4
  %r164 = getelementptr i32, ptr %r162, i32 0
  %r165 = load i32, ptr %r164, align 4
  store i32 %r165, ptr %r163, align 4
  %r166 = alloca i32, align 4
  %r167 = load i32, ptr %r163, align 4
  %r168 = getelementptr i32, ptr %r162, i32 %r167
  %r169 = load i32, ptr %r168, align 4
  store i32 %r169, ptr %r166, align 4
  %r170 = getelementptr i32, ptr %r162, i32 0
  %r171 = getelementptr i32, ptr %r162, i32 0
  %r172 = load i32, ptr %r171, align 4
  %r173 = sub i32 %r172, 1
  store i32 %r173, ptr %r170, align 4
  %r174 = load i32, ptr %r166, align 4
  ret i32 %r174
}

define i32 @stack_peek(ptr %r175) {
stack_peek:
  %r176 = alloca i32, align 4
  %r177 = getelementptr i32, ptr %r175, i32 0
  %r178 = load i32, ptr %r177, align 4
  store i32 %r178, ptr %r176, align 4
  %r179 = load i32, ptr %r176, align 4
  %r180 = getelementptr i32, ptr %r175, i32 %r179
  %r181 = load i32, ptr %r180, align 4
  ret i32 %r181
}

define i32 @stack_size(ptr %r182) {
stack_size:
  %r183 = getelementptr i32, ptr %r182, i32 0
  %r184 = load i32, ptr %r183, align 4
  ret i32 %r184
}

define i32 @mod(i32 %r185, i32 %r187) {
mod:
  %r186 = alloca i32, align 4
  store i32 %r185, ptr %r186, align 4
  %r188 = alloca i32, align 4
  store i32 %r187, ptr %r188, align 4
  %r189 = load i32, ptr %r186, align 4
  %r190 = load i32, ptr %r186, align 4
  %r191 = load i32, ptr %r188, align 4
  %r192 = sdiv i32 %r190, %r191
  %r193 = load i32, ptr %r188, align 4
  %r194 = mul i32 %r192, %r193
  %r195 = sub i32 %r189, %r194
  ret i32 %r195
}

define i32 @eval_op(i32 %r196, i32 %r198, i32 %r200) {
eval_op:
  %r197 = alloca i32, align 4
  store i32 %r196, ptr %r197, align 4
  %r199 = alloca i32, align 4
  store i32 %r198, ptr %r199, align 4
  %r201 = alloca i32, align 4
  store i32 %r200, ptr %r201, align 4
  %r202 = load i32, ptr %r197, align 4
  %r203 = icmp eq i32 %r202, 43
  br i1 %r203, label %bb27, label %bb28

bb27:                                             ; preds = %eval_op
  %r204 = load i32, ptr %r199, align 4
  %r205 = load i32, ptr %r201, align 4
  %r206 = add i32 %r204, %r205
  ret i32 %r206

bb71:                                             ; No predecessors!
  br label %bb29

bb28:                                             ; preds = %eval_op
  br label %bb29

bb29:                                             ; preds = %bb28, %bb71
  %r207 = load i32, ptr %r197, align 4
  %r208 = icmp eq i32 %r207, 45
  br i1 %r208, label %bb30, label %bb31

bb30:                                             ; preds = %bb29
  %r209 = load i32, ptr %r199, align 4
  %r210 = load i32, ptr %r201, align 4
  %r211 = sub i32 %r209, %r210
  ret i32 %r211

bb72:                                             ; No predecessors!
  br label %bb32

bb31:                                             ; preds = %bb29
  br label %bb32

bb32:                                             ; preds = %bb31, %bb72
  %r212 = load i32, ptr %r197, align 4
  %r213 = icmp eq i32 %r212, 42
  br i1 %r213, label %bb33, label %bb34

bb33:                                             ; preds = %bb32
  %r214 = load i32, ptr %r199, align 4
  %r215 = load i32, ptr %r201, align 4
  %r216 = mul i32 %r214, %r215
  ret i32 %r216

bb73:                                             ; No predecessors!
  br label %bb35

bb34:                                             ; preds = %bb32
  br label %bb35

bb35:                                             ; preds = %bb34, %bb73
  %r217 = load i32, ptr %r197, align 4
  %r218 = icmp eq i32 %r217, 47
  br i1 %r218, label %bb36, label %bb37

bb36:                                             ; preds = %bb35
  %r219 = load i32, ptr %r199, align 4
  %r220 = load i32, ptr %r201, align 4
  %r221 = sdiv i32 %r219, %r220
  ret i32 %r221

bb74:                                             ; No predecessors!
  br label %bb38

bb37:                                             ; preds = %bb35
  br label %bb38

bb38:                                             ; preds = %bb37, %bb74
  %r222 = load i32, ptr %r197, align 4
  %r223 = icmp eq i32 %r222, 37
  br i1 %r223, label %bb39, label %bb40

bb39:                                             ; preds = %bb38
  %r224 = load i32, ptr %r199, align 4
  %r225 = load i32, ptr %r201, align 4
  %r226 = call i32 @mod(i32 %r224, i32 %r225)
  ret i32 %r226

bb75:                                             ; No predecessors!
  br label %bb41

bb40:                                             ; preds = %bb38
  br label %bb41

bb41:                                             ; preds = %bb40, %bb75
  ret i32 0
}

define i32 @eval() {
eval:
  %r284 = alloca i32, align 4
  %r282 = alloca i32, align 4
  %r280 = alloca i32, align 4
  %r264 = alloca i32, align 4
  %r262 = alloca i32, align 4
  %r260 = alloca i32, align 4
  %r247 = alloca i32, align 4
  %r227 = alloca [256 x i32], align 4
  %r228 = alloca [256 x i32], align 4
  %r229 = alloca i32, align 4
  store i32 0, ptr %r229, align 4
  br label %bb42

bb42:                                             ; preds = %bb43, %eval
  %r230 = load i32, ptr %r229, align 4
  %r231 = icmp slt i32 %r230, 256
  br i1 %r231, label %bb43, label %bb44

bb43:                                             ; preds = %bb42
  %r232 = load i32, ptr %r229, align 4
  %r233 = getelementptr [256 x i32], ptr %r227, i32 0, i32 %r232
  store i32 0, ptr %r233, align 4
  %r234 = load i32, ptr %r229, align 4
  %r235 = getelementptr [256 x i32], ptr %r228, i32 0, i32 %r234
  store i32 0, ptr %r235, align 4
  %r236 = load i32, ptr %r229, align 4
  %r237 = add i32 %r236, 1
  store i32 %r237, ptr %r229, align 4
  br label %bb42

bb44:                                             ; preds = %bb42
  %r238 = load i32, ptr @cur_token, align 4
  %r239 = load i32, ptr @TOKEN_NUM, align 4
  %r240 = icmp ne i32 %r238, %r239
  br i1 %r240, label %bb45, label %bb46

bb45:                                             ; preds = %bb44
  %r241 = call i32 @panic()
  ret i32 %r241

bb76:                                             ; No predecessors!
  br label %bb47

bb46:                                             ; preds = %bb44
  br label %bb47

bb47:                                             ; preds = %bb46, %bb76
  %r242 = load i32, ptr @num, align 4
  call void @stack_push(ptr %r227, i32 %r242)
  %r243 = call i32 @next_token()
  br label %bb48

bb48:                                             ; preds = %bb60, %bb47
  %r244 = load i32, ptr @cur_token, align 4
  %r245 = load i32, ptr @TOKEN_OTHER, align 4
  %r246 = icmp eq i32 %r244, %r245
  br i1 %r246, label %bb49, label %bb50

bb49:                                             ; preds = %bb48
  %r248 = load i32, ptr @other, align 4
  store i32 %r248, ptr %r247, align 4
  %r249 = load i32, ptr %r247, align 4
  %r250 = call i32 @get_op_prec(i32 %r249)
  %r251 = icmp eq i32 %r250, 0
  br i1 %r251, label %bb51, label %bb52

bb51:                                             ; preds = %bb49
  br label %bb50

bb77:                                             ; No predecessors!
  br label %bb53

bb52:                                             ; preds = %bb49
  br label %bb53

bb53:                                             ; preds = %bb52, %bb77
  %r252 = call i32 @next_token()
  br label %bb54

bb54:                                             ; preds = %bb55, %bb53
  %r253 = call i32 @stack_size(ptr %r228)
  %r254 = icmp ne i32 %r253, 0
  br i1 %r254, label %bb57, label %bb56

bb57:                                             ; preds = %bb54
  %r255 = call i32 @stack_peek(ptr %r228)
  %r256 = call i32 @get_op_prec(i32 %r255)
  %r257 = load i32, ptr %r247, align 4
  %r258 = call i32 @get_op_prec(i32 %r257)
  %r259 = icmp sge i32 %r256, %r258
  br i1 %r259, label %bb55, label %bb56

bb55:                                             ; preds = %bb57
  %r261 = call i32 @stack_pop(ptr %r228)
  store i32 %r261, ptr %r260, align 4
  %r263 = call i32 @stack_pop(ptr %r227)
  store i32 %r263, ptr %r262, align 4
  %r265 = call i32 @stack_pop(ptr %r227)
  store i32 %r265, ptr %r264, align 4
  %r266 = load i32, ptr %r260, align 4
  %r267 = load i32, ptr %r264, align 4
  %r268 = load i32, ptr %r262, align 4
  %r269 = call i32 @eval_op(i32 %r266, i32 %r267, i32 %r268)
  call void @stack_push(ptr %r227, i32 %r269)
  br label %bb54

bb56:                                             ; preds = %bb57, %bb54
  %r270 = load i32, ptr %r247, align 4
  call void @stack_push(ptr %r228, i32 %r270)
  %r271 = load i32, ptr @cur_token, align 4
  %r272 = load i32, ptr @TOKEN_NUM, align 4
  %r273 = icmp ne i32 %r271, %r272
  br i1 %r273, label %bb58, label %bb59

bb58:                                             ; preds = %bb56
  %r274 = call i32 @panic()
  ret i32 %r274

bb78:                                             ; No predecessors!
  br label %bb60

bb59:                                             ; preds = %bb56
  br label %bb60

bb60:                                             ; preds = %bb59, %bb78
  %r275 = load i32, ptr @num, align 4
  call void @stack_push(ptr %r227, i32 %r275)
  %r276 = call i32 @next_token()
  br label %bb48

bb50:                                             ; preds = %bb51, %bb48
  %r277 = call i32 @next_token()
  br label %bb61

bb61:                                             ; preds = %bb62, %bb50
  %r278 = call i32 @stack_size(ptr %r228)
  %r279 = icmp ne i32 %r278, 0
  br i1 %r279, label %bb62, label %bb63

bb62:                                             ; preds = %bb61
  %r281 = call i32 @stack_pop(ptr %r228)
  store i32 %r281, ptr %r280, align 4
  %r283 = call i32 @stack_pop(ptr %r227)
  store i32 %r283, ptr %r282, align 4
  %r285 = call i32 @stack_pop(ptr %r227)
  store i32 %r285, ptr %r284, align 4
  %r286 = load i32, ptr %r280, align 4
  %r287 = load i32, ptr %r284, align 4
  %r288 = load i32, ptr %r282, align 4
  %r289 = call i32 @eval_op(i32 %r286, i32 %r287, i32 %r288)
  call void @stack_push(ptr %r227, i32 %r289)
  br label %bb61

bb63:                                             ; preds = %bb61
  %r290 = call i32 @stack_peek(ptr %r227)
  ret i32 %r290
}

define i32 @main() {
main:
  %r291 = alloca i32, align 4
  %r292 = call i32 @getint()
  store i32 %r292, ptr %r291, align 4
  %r293 = call i32 @getch()
  %r294 = call i32 @next_token()
  br label %bb64

bb64:                                             ; preds = %bb65, %main
  %r295 = load i32, ptr %r291, align 4
  %r296 = icmp ne i32 %r295, 0
  br i1 %r296, label %bb65, label %bb66

bb65:                                             ; preds = %bb64
  %r297 = call i32 @eval()
  call void @putint(i32 %r297)
  call void @putch(i32 10)
  %r298 = load i32, ptr %r291, align 4
  %r299 = sub i32 %r298, 1
  store i32 %r299, ptr %r291, align 4
  br label %bb64

bb66:                                             ; preds = %bb64
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @after_main() #0 {
  %1 = load i32, ptr @_sysy_idx, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 1
  br i1 %2, label %15, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @_sysy_h, align 4, !tbaa !6
  %5 = load i32, ptr @_sysy_m, align 4, !tbaa !6
  %6 = load i32, ptr @_sysy_s, align 4, !tbaa !6
  %7 = load i32, ptr @_sysy_us, align 4, !tbaa !6
  br label %8

8:                                                ; preds = %15, %3
  %9 = phi i32 [ %7, %3 ], [ %37, %15 ]
  %10 = phi i32 [ %6, %3 ], [ %41, %15 ]
  %11 = phi i32 [ %5, %3 ], [ %45, %15 ]
  %12 = phi i32 [ %4, %3 ], [ %44, %15 ]
  %13 = load ptr, ptr @stderr, align 8, !tbaa !10
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef %12, i32 noundef %11, i32 noundef %10, i32 noundef %9) #6
  ret void

15:                                               ; preds = %15, %0
  %16 = phi i64 [ %46, %15 ], [ 1, %0 ]
  %17 = load ptr, ptr @stderr, align 8, !tbaa !10
  %18 = getelementptr inbounds [1024 x i32], ptr @_sysy_l1, i64 0, i64 %16
  %19 = load i32, ptr %18, align 4, !tbaa !6
  %20 = getelementptr inbounds [1024 x i32], ptr @_sysy_l2, i64 0, i64 %16
  %21 = load i32, ptr %20, align 4, !tbaa !6
  %22 = getelementptr inbounds [1024 x i32], ptr @_sysy_h, i64 0, i64 %16
  %23 = load i32, ptr %22, align 4, !tbaa !6
  %24 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %16
  %25 = load i32, ptr %24, align 4, !tbaa !6
  %26 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %16
  %27 = load i32, ptr %26, align 4, !tbaa !6
  %28 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %16
  %29 = load i32, ptr %28, align 4, !tbaa !6
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.5, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #6
  %31 = load i32, ptr %28, align 4, !tbaa !6
  %32 = load i32, ptr @_sysy_us, align 4, !tbaa !6
  %33 = add nsw i32 %32, %31
  %34 = load i32, ptr %26, align 4, !tbaa !6
  %35 = load i32, ptr @_sysy_s, align 4, !tbaa !6
  %36 = add nsw i32 %35, %34
  %37 = srem i32 %33, 1000000
  store i32 %37, ptr @_sysy_us, align 4, !tbaa !6
  %38 = load i32, ptr %24, align 4, !tbaa !6
  %39 = load i32, ptr @_sysy_m, align 4, !tbaa !6
  %40 = add nsw i32 %39, %38
  %41 = srem i32 %36, 60
  store i32 %41, ptr @_sysy_s, align 4, !tbaa !6
  %42 = load i32, ptr %22, align 4, !tbaa !6
  %43 = load i32, ptr @_sysy_h, align 4, !tbaa !6
  %44 = add nsw i32 %43, %42
  store i32 %44, ptr @_sysy_h, align 4, !tbaa !6
  %45 = srem i32 %40, 60
  store i32 %45, ptr @_sysy_m, align 4, !tbaa !6
  %46 = add nuw nsw i64 %16, 1
  %47 = load i32, ptr @_sysy_idx, align 4, !tbaa !6
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %15, label %8, !llvm.loop !12
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @getint() #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #7
  %2 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %1)
  %3 = load i32, ptr %1, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #7
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_scanf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @getch() #0 {
  %1 = alloca i8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #7
  %2 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %1)
  %3 = load i8, ptr %1, align 4, !tbaa !14
  %4 = zext i8 %3 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #7
  ret i32 %4
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @putint(i32 noundef %0) #0 {
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @putch(i32 noundef %0) #0 {
  %2 = tail call i32 @putchar(i32 %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @putarray(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %0)
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = zext nneg i32 %0 to i64
  br label %9

7:                                                ; preds = %9, %2
  %8 = tail call i32 @putchar(i32 10)
  ret void

9:                                                ; preds = %9, %5
  %10 = phi i64 [ 0, %5 ], [ %14, %9 ]
  %11 = getelementptr inbounds i32, ptr %1, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !6
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %12)
  %14 = add nuw nsw i64 %10, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %7, label %9, !llvm.loop !15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @before_main() local_unnamed_addr #4 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) @_sysy_us, i8 0, i64 4096, i1 false), !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) @_sysy_s, i8 0, i64 4096, i1 false), !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) @_sysy_m, i8 0, i64 4096, i1 false), !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) @_sysy_h, i8 0, i64 4096, i1 false), !tbaa !6
  store i32 1, ptr @_sysy_idx, align 4, !tbaa !6
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind uwtable
define dso_local void @_sysy_starttime(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @_sysy_idx, align 4, !tbaa !6
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [1024 x i32], ptr @_sysy_l1, i64 0, i64 %3
  store i32 %0, ptr %4, align 4, !tbaa !6
  %5 = tail call i32 @gettimeofday(ptr noundef nonnull @_sysy_start, ptr noundef null) #7
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @_sysy_stoptime(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @gettimeofday(ptr noundef nonnull @_sysy_end, ptr noundef null) #7
  %3 = load i32, ptr @_sysy_idx, align 4, !tbaa !6
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [1024 x i32], ptr @_sysy_l2, i64 0, i64 %4
  store i32 %0, ptr %5, align 4, !tbaa !6
  %6 = load i64, ptr @_sysy_end, align 8, !tbaa !16
  %7 = load i64, ptr @_sysy_start, align 8, !tbaa !16
  %8 = sub nsw i64 %6, %7
  %9 = mul nsw i64 %8, 1000000
  %10 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @_sysy_end, i64 0, i32 1), align 8, !tbaa !19
  %11 = add nsw i64 %9, %10
  %12 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @_sysy_start, i64 0, i32 1), align 8, !tbaa !19
  %13 = sub i64 %11, %12
  %14 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %4
  %15 = load i32, ptr %14, align 4, !tbaa !6
  %16 = trunc i64 %13 to i32
  %17 = add i32 %15, %16
  %18 = freeze i32 %17
  %19 = sdiv i32 %18, 1000000
  %20 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %4
  %21 = load i32, ptr %20, align 4, !tbaa !6
  %22 = add nsw i32 %19, %21
  %23 = mul i32 %19, 1000000
  %24 = sub i32 %18, %23
  store i32 %24, ptr %14, align 4, !tbaa !6
  %25 = freeze i32 %22
  %26 = sdiv i32 %25, 60
  %27 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %4
  %28 = load i32, ptr %27, align 4, !tbaa !6
  %29 = add nsw i32 %26, %28
  %30 = mul i32 %26, 60
  %31 = sub i32 %25, %30
  store i32 %31, ptr %20, align 4, !tbaa !6
  %32 = freeze i32 %29
  %33 = sdiv i32 %32, 60
  %34 = getelementptr inbounds [1024 x i32], ptr @_sysy_h, i64 0, i64 %4
  %35 = load i32, ptr %34, align 4, !tbaa !6
  %36 = add nsw i32 %35, %33
  store i32 %36, ptr %34, align 4, !tbaa !6
  %37 = mul i32 %33, 60
  %38 = sub i32 %32, %37
  store i32 %38, ptr %27, align 4, !tbaa !6
  %39 = add nsw i32 %3, 1
  store i32 %39, ptr @_sysy_idx, align 4, !tbaa !6
  ret void
}

attributes #0 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold }
attributes #7 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!8, !8, i64 0}
!15 = distinct !{!15, !13}
!16 = !{!17, !18, i64 0}
!17 = !{!"timeval", !18, i64 0, !18, i64 8}
!18 = !{!"long", !8, i64 0}
!19 = !{!17, !18, i64 8}
