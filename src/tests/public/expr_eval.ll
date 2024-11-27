declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@TOKEN_NUM = global i32 0
@TOKEN_OTHER = global i32 1
@last_char = global i32 32
@num = global i32 0
@other = global i32 0
@cur_token = global i32 0
define i32 @next_char( ) {
bb1:
  %r100 = call i32 @getch()
  store i32 %r100, i32* @last_char
  %r101 = load i32, i32* @last_char
  ret i32 %r101
}

define i32 @is_space( i32 %r102 ) {
bb2:
  %r292 = add i32 0, 0
  %r293 = add i32 %r102, 0
  %r105 = icmp eq i32 %r293, 32
  br i1 %r105, label %bb3, label %bb6

bb6:
  %r107 = icmp eq i32 %r293, 10
  br i1 %r107, label %bb3, label %bb4

bb3:
  ret i32 1
bb4:
  ret i32 0
}

define i32 @is_num( i32 %r108 ) {
bb7:
  %r295 = add i32 0, 0
  %r296 = add i32 %r108, 0
  %r111 = icmp sge i32 %r296, 48
  br i1 %r111, label %bb11, label %bb9

bb11:
  %r113 = icmp sle i32 %r296, 57
  br i1 %r113, label %bb8, label %bb9

bb8:
  ret i32 1
bb9:
  ret i32 0
}

define i32 @next_token( ) {
bb12:
  br label %bb13

bb13:
  %r114 = load i32, i32* @last_char
  %r115 = call i32 @is_space(i32 %r114)
  %r116 = icmp ne i32 %r115, 0
  br i1 %r116, label %bb14, label %bb15

bb14:
  call void @next_char()
  br label %bb13

bb15:
  %r117 = load i32, i32* @last_char
  %r118 = call i32 @is_num(i32 %r117)
  %r119 = icmp ne i32 %r118, 0
  br i1 %r119, label %bb16, label %bb17

bb16:
  %r120 = load i32, i32* @last_char
  %r121 = sub i32 %r120, 48
  store i32 %r121, i32* @num
  br label %bb19

bb19:
  %r122 = call i32 @next_char()
  %r123 = call i32 @is_num(i32 %r122)
  %r124 = icmp ne i32 %r123, 0
  br i1 %r124, label %bb20, label %bb21

bb20:
  %r125 = load i32, i32* @num
  %r126 = mul i32 %r125, 10
  %r127 = load i32, i32* @last_char
  %r128 = add i32 %r126, %r127
  %r129 = sub i32 %r128, 48
  store i32 %r129, i32* @num
  br label %bb19

bb21:
  %r130 = load i32, i32* @TOKEN_NUM
  store i32 %r130, i32* @cur_token
  br label %bb18

bb17:
  %r131 = load i32, i32* @last_char
  store i32 %r131, i32* @other
  call void @next_char()
  %r132 = load i32, i32* @TOKEN_OTHER
  store i32 %r132, i32* @cur_token
  br label %bb18

bb18:
  %r133 = load i32, i32* @cur_token
  ret i32 %r133
}

define i32 @panic( ) {
bb22:
  call void @putch(i32 112)
  call void @putch(i32 97)
  call void @putch(i32 110)
  call void @putch(i32 105)
  call void @putch(i32 99)
  call void @putch(i32 33)
  call void @putch(i32 10)
  ret i32 -1
}

define i32 @get_op_prec( i32 %r134 ) {
bb23:
  %r298 = add i32 0, 0
  %r299 = add i32 %r134, 0
  %r137 = icmp eq i32 %r299, 43
  br i1 %r137, label %bb24, label %bb26

bb26:
  %r139 = icmp eq i32 %r299, 45
  br i1 %r139, label %bb24, label %bb25

bb24:
  ret i32 10
bb25:
  %r141 = icmp eq i32 %r299, 42
  br i1 %r141, label %bb27, label %bb30

bb30:
  %r143 = icmp eq i32 %r299, 47
  br i1 %r143, label %bb27, label %bb29

bb29:
  %r145 = icmp eq i32 %r299, 37
  br i1 %r145, label %bb27, label %bb28

bb27:
  ret i32 20
bb28:
  ret i32 0
}

define void @stack_push( i32* %r146, i32 %r147 ) {
bb31:
  %r302 = add i32 0, 0
  %r303 = add i32 %r147, 0
  %r149 = getelementptr [256 x i32 ], [256 x i32 ]* %r146, i32 0, i32 0
  %r150 = getelementptr [256 x i32 ], [256 x i32 ]* %r146, i32 0, i32 0
  %r151 = load i32, i32* %r150
  %r152 = add i32 %r151, 1
  store i32 %r152, i32* %r149
  %r304 = add i32 0, 0
  %r154 = getelementptr [256 x i32 ], [256 x i32 ]* %r146, i32 0, i32 0
  %r155 = load i32, i32* %r154
  %r305 = add i32 %r155, 0
  %r157 = getelementptr [256 x i32 ], [256 x i32 ]* %r146, i32 0, i32 %r305
  store i32 %r303, i32* %r157
  ret void
}

define i32 @stack_pop( i32* %r159 ) {
bb32:
  %r308 = add i32 0, 0
  %r161 = getelementptr [256 x i32 ], [256 x i32 ]* %r159, i32 0, i32 0
  %r162 = load i32, i32* %r161
  %r309 = add i32 %r162, 0
  %r310 = add i32 0, 0
  %r165 = getelementptr [256 x i32 ], [256 x i32 ]* %r159, i32 0, i32 %r309
  %r166 = load i32, i32* %r165
  %r311 = add i32 %r166, 0
  %r167 = getelementptr [256 x i32 ], [256 x i32 ]* %r159, i32 0, i32 0
  %r168 = getelementptr [256 x i32 ], [256 x i32 ]* %r159, i32 0, i32 0
  %r169 = load i32, i32* %r168
  %r170 = sub i32 %r169, 1
  store i32 %r170, i32* %r167
  ret i32 %r311
}

define i32 @stack_peek( i32* %r172 ) {
bb33:
  %r313 = add i32 0, 0
  %r174 = getelementptr [256 x i32 ], [256 x i32 ]* %r172, i32 0, i32 0
  %r175 = load i32, i32* %r174
  %r314 = add i32 %r175, 0
  %r177 = getelementptr [256 x i32 ], [256 x i32 ]* %r172, i32 0, i32 %r314
  %r178 = load i32, i32* %r177
  ret i32 %r178
}

define i32 @stack_size( i32* %r179 ) {
bb34:
  %r180 = getelementptr [256 x i32 ], [256 x i32 ]* %r179, i32 0, i32 0
  %r181 = load i32, i32* %r180
  ret i32 %r181
}

define i32 @mod( i32 %r182, i32 %r184 ) {
bb35:
  %r317 = add i32 0, 0
  %r318 = add i32 %r182, 0
  %r319 = add i32 0, 0
  %r320 = add i32 %r184, 0
  %r189 = sdiv i32 %r318, %r320
  %r191 = mul i32 %r189, %r320
  %r192 = sub i32 %r318, %r191
  ret i32 %r192
}

define i32 @eval_op( i32 %r193, i32 %r195, i32 %r197 ) {
bb36:
  %r324 = add i32 0, 0
  %r325 = add i32 %r193, 0
  %r326 = add i32 0, 0
  %r327 = add i32 %r195, 0
  %r328 = add i32 0, 0
  %r329 = add i32 %r197, 0
  %r200 = icmp eq i32 %r325, 43
  br i1 %r200, label %bb37, label %bb38

bb37:
  %r203 = add i32 %r327, %r329
  ret i32 %r203
bb38:
  %r205 = icmp eq i32 %r325, 45
  br i1 %r205, label %bb39, label %bb40

bb39:
  %r208 = sub i32 %r327, %r329
  ret i32 %r208
bb40:
  %r210 = icmp eq i32 %r325, 42
  br i1 %r210, label %bb41, label %bb42

bb41:
  %r213 = mul i32 %r327, %r329
  ret i32 %r213
bb42:
  %r215 = icmp eq i32 %r325, 47
  br i1 %r215, label %bb43, label %bb44

bb43:
  %r218 = sdiv i32 %r327, %r329
  ret i32 %r218
bb44:
  %r220 = icmp eq i32 %r325, 37
  br i1 %r220, label %bb45, label %bb46

bb45:
  %r223 = call i32 @mod(i32 %r327, i32 %r329)
  ret i32 %r223
bb46:
  ret i32 0
}

define i32 @eval( ) {
bb47:
  %r338 = add i32 0, 0
  %r339 = add i32 0, 0
  %r340 = add i32 0, 0
  %r341 = add i32 0, 0
  %r342 = add i32 0, 0
  %r343 = add i32 0, 0
  %r344 = add i32 0, 0
  %r224 = alloca [ 256 x i32 ]
  %r225 = alloca [ 256 x i32 ]
  %r345 = add i32 0, 0
  %r346 = add i32 0, 0
  br label %bb48

bb48:
  %r347 = phi i32 [ %r346, %bb47 ], [ %r355, %bb49 ]
  %r228 = icmp slt i32 %r347, 256
  br i1 %r228, label %bb49, label %bb50

bb49:
  %r230 = getelementptr [256 x i32 ], [256 x i32 ]* %r224, i32 0, i32 %r347
  store i32 0, i32* %r230
  %r232 = getelementptr [256 x i32 ], [256 x i32 ]* %r225, i32 0, i32 %r347
  store i32 0, i32* %r232
  %r234 = add i32 %r347, 1
  %r355 = add i32 %r234, 0
  br label %bb48

bb50:
  %r235 = load i32, i32* @cur_token
  %r236 = load i32, i32* @TOKEN_NUM
  %r237 = icmp ne i32 %r235, %r236
  br i1 %r237, label %bb51, label %bb52

bb51:
  %r238 = call i32 @panic()
  ret i32 %r238
bb52:
  %r239 = load i32, i32* @num
  call void @stack_push(i32* %r224, i32 %r239)
  call void @next_token()
  br label %bb53

bb53:
  %r240 = load i32, i32* @cur_token
  %r241 = load i32, i32* @TOKEN_OTHER
  %r242 = icmp eq i32 %r240, %r241
  br i1 %r242, label %bb54, label %bb55

bb54:
  %r244 = load i32, i32* @other
  %r351 = add i32 %r244, 0
  %r246 = call i32 @get_op_prec(i32 %r351)
  %r247 = icmp eq i32 %r246, 0
  br i1 %r247, label %bb56, label %bb57

bb56:
  br label %bb55

bb57:
  call void @next_token()
  br label %bb58

bb58:
  %r248 = call i32 @stack_size(i32* %r225)
  %r249 = icmp ne i32 %r248, 0
  br i1 %r249, label %bb61, label %bb60

bb61:
  %r250 = call i32 @stack_peek(i32* %r225)
  %r251 = call i32 @get_op_prec(i32 %r250)
  %r253 = call i32 @get_op_prec(i32 %r351)
  %r254 = icmp sge i32 %r251, %r253
  br i1 %r254, label %bb59, label %bb60

bb59:
  %r256 = call i32 @stack_pop(i32* %r225)
  %r352 = add i32 %r256, 0
  %r258 = call i32 @stack_pop(i32* %r224)
  %r353 = add i32 %r258, 0
  %r260 = call i32 @stack_pop(i32* %r224)
  %r354 = add i32 %r260, 0
  %r264 = call i32 @eval_op(i32 %r352, i32 %r354, i32 %r353)
  call void @stack_push(i32* %r224, i32 %r264)
  br label %bb58

bb60:
  call void @stack_push(i32* %r225, i32 %r351)
  %r266 = load i32, i32* @cur_token
  %r267 = load i32, i32* @TOKEN_NUM
  %r268 = icmp ne i32 %r266, %r267
  br i1 %r268, label %bb62, label %bb63

bb62:
  %r269 = call i32 @panic()
  ret i32 %r269
bb63:
  %r270 = load i32, i32* @num
  call void @stack_push(i32* %r224, i32 %r270)
  call void @next_token()
  br label %bb53

bb55:
  call void @next_token()
  br label %bb64

bb64:
  %r271 = call i32 @stack_size(i32* %r225)
  %r272 = icmp ne i32 %r271, 0
  br i1 %r272, label %bb65, label %bb66

bb65:
  %r274 = call i32 @stack_pop(i32* %r225)
  %r348 = add i32 %r274, 0
  %r276 = call i32 @stack_pop(i32* %r224)
  %r349 = add i32 %r276, 0
  %r278 = call i32 @stack_pop(i32* %r224)
  %r350 = add i32 %r278, 0
  %r282 = call i32 @eval_op(i32 %r348, i32 %r350, i32 %r349)
  call void @stack_push(i32* %r224, i32 %r282)
  br label %bb64

bb66:
  %r283 = call i32 @stack_peek(i32* %r224)
  ret i32 %r283
}

define i32 @main( ) {
bb67:
  call void @_sysy_starttime(i32 205)
  %r357 = add i32 0, 0
  %r285 = call i32 @getint()
  %r358 = add i32 %r285, 0
  call void @getch()
  call void @next_token()
  br label %bb68

bb68:
  %r359 = phi i32 [ %r358, %bb67 ], [ %r360, %bb69 ]
  %r287 = icmp ne i32 %r359, 0
  br i1 %r287, label %bb69, label %bb70

bb69:
  %r288 = call i32 @eval()
  call void @putint(i32 %r288)
  call void @putch(i32 10)
  %r290 = sub i32 %r359, 1
  %r360 = add i32 %r290, 0
  br label %bb68

bb70:
  call void @_sysy_stoptime(i32 214)
  ret i32 0
}

