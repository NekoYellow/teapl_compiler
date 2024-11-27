declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
@m = global i32 0
@to = global [ 5005 x i32 ] zeroinitializer
@next = global [ 5005 x i32 ] zeroinitializer
@head = global [ 1005 x i32 ] zeroinitializer
@cnt = global i32 0
@vis = global [ 1005 x i32 ] zeroinitializer
define i32 @quickread( ) {
bb1:
  %r230 = add i32 0, 0
  %r101 = call i32 @getch()
  %r231 = add i32 %r101, 0
  %r232 = add i32 0, 0
  %r233 = add i32 0, 0
  %r234 = add i32 0, 0
  %r235 = add i32 0, 0
  br label %bb2

bb2:
  %r236 = phi i32 [ %r235, %bb1 ], [ %r238, %bb7 ]
  %r237 = phi i32 [ %r231, %bb1 ], [ %r239, %bb7 ]
  %r105 = icmp slt i32 %r237, 48
  br i1 %r105, label %bb3, label %bb5

bb5:
  %r107 = icmp sgt i32 %r237, 57
  br i1 %r107, label %bb3, label %bb4

bb3:
  %r109 = icmp eq i32 %r237, 45
  br i1 %r109, label %bb6, label %bb7

bb6:
  %r240 = add i32 1, 0
  br label %bb7

bb7:
  %r238 = phi i32 [ %r236, %bb3 ], [ %r240, %bb6 ]
  %r110 = call i32 @getch()
  %r239 = add i32 %r110, 0
  br label %bb2

bb4:
  br label %bb8

bb8:
  %r241 = phi i32 [ %r233, %bb4 ], [ %r243, %bb9 ]
  %r242 = phi i32 [ %r237, %bb4 ], [ %r244, %bb9 ]
  %r112 = icmp sge i32 %r242, 48
  br i1 %r112, label %bb11, label %bb10

bb11:
  %r114 = icmp sle i32 %r242, 57
  br i1 %r114, label %bb9, label %bb10

bb9:
  %r116 = mul i32 %r241, 10
  %r118 = add i32 %r116, %r242
  %r119 = sub i32 %r118, 48
  %r243 = add i32 %r119, 0
  %r120 = call i32 @getch()
  %r244 = add i32 %r120, 0
  br label %bb8

bb10:
  %r122 = icmp ne i32 %r236, 0
  br i1 %r122, label %bb12, label %bb13

bb12:
  %r124 = sub i32 0, %r241
  ret i32 %r124
bb13:
  ret i32 %r241
}

define void @addedge( i32 %r126, i32 %r128 ) {
bb15:
  %r247 = add i32 0, 0
  %r248 = add i32 %r126, 0
  %r249 = add i32 0, 0
  %r250 = add i32 %r128, 0
  %r130 = load i32, i32* @cnt
  %r131 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r130
  store i32 %r250, i32* %r131
  %r133 = load i32, i32* @cnt
  %r134 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r133
  %r136 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r248
  %r137 = load i32, i32* %r136
  store i32 %r137, i32* %r134
  %r139 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r248
  %r140 = load i32, i32* @cnt
  store i32 %r140, i32* %r139
  %r141 = load i32, i32* @cnt
  %r142 = add i32 %r141, 1
  store i32 %r142, i32* @cnt
  %r143 = load i32, i32* @cnt
  %r144 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r143
  store i32 %r248, i32* %r144
  %r146 = load i32, i32* @cnt
  %r147 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r146
  %r149 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r250
  %r150 = load i32, i32* %r149
  store i32 %r150, i32* %r147
  %r152 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r250
  %r153 = load i32, i32* @cnt
  store i32 %r153, i32* %r152
  %r154 = load i32, i32* @cnt
  %r155 = add i32 %r154, 1
  store i32 %r155, i32* @cnt
  ret void
}

define void @init( ) {
bb16:
  %r252 = add i32 0, 0
  %r253 = add i32 0, 0
  br label %bb17

bb17:
  %r254 = phi i32 [ %r253, %bb16 ], [ %r255, %bb18 ]
  %r158 = icmp slt i32 %r254, 1005
  br i1 %r158, label %bb18, label %bb19

bb18:
  %r160 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r254
  store i32 -1, i32* %r160
  %r162 = add i32 %r254, 1
  %r255 = add i32 %r162, 0
  br label %bb17

bb19:
  ret void
}

define void @clear( ) {
bb20:
  %r257 = add i32 0, 0
  %r258 = add i32 1, 0
  br label %bb21

bb21:
  %r259 = phi i32 [ %r258, %bb20 ], [ %r260, %bb22 ]
  %r165 = load i32, i32* @n
  %r166 = icmp sle i32 %r259, %r165
  br i1 %r166, label %bb22, label %bb23

bb22:
  %r168 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r259
  store i32 0, i32* %r168
  %r170 = add i32 %r259, 1
  %r260 = add i32 %r170, 0
  br label %bb21

bb23:
  ret void
}

define i32 @same( i32 %r171, i32 %r173 ) {
bb24:
  %r265 = add i32 0, 0
  %r266 = add i32 0, 0
  %r267 = add i32 0, 0
  %r268 = add i32 %r171, 0
  %r269 = add i32 0, 0
  %r270 = add i32 %r173, 0
  %r176 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r268
  store i32 1, i32* %r176
  %r179 = icmp eq i32 %r268, %r270
  br i1 %r179, label %bb25, label %bb26

bb25:
  ret i32 1
bb26:
  %r182 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r268
  %r183 = load i32, i32* %r182
  %r271 = add i32 %r183, 0
  br label %bb27

bb27:
  %r272 = phi i32 [ %r271, %bb26 ], [ %r274, %bb31 ]
  %r185 = icmp ne i32 %r272, -1
  br i1 %r185, label %bb28, label %bb29

bb28:
  %r188 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r272
  %r189 = load i32, i32* %r188
  %r273 = add i32 %r189, 0
  %r191 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r273
  %r192 = load i32, i32* %r191
  %r193 = icmp eq i32 %r192, 0
  br i1 %r193, label %bb32, label %bb31

bb32:
  %r196 = call i32 @same(i32 %r273, i32 %r270)
  %r197 = icmp ne i32 %r196, 0
  br i1 %r197, label %bb30, label %bb31

bb30:
  ret i32 1
bb31:
  %r199 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r272
  %r200 = load i32, i32* %r199
  %r274 = add i32 %r200, 0
  br label %bb27

bb29:
  ret i32 0
}

define i32 @main( ) {
bb33:
  call void @_sysy_starttime(i32 74)
  %r201 = call i32 @quickread()
  store i32 %r201, i32* @n
  %r202 = call i32 @quickread()
  store i32 %r202, i32* @m
  call void @init()
  %r278 = add i32 0, 0
  %r279 = add i32 0, 0
  %r280 = add i32 0, 0
  %r281 = add i32 0, 0
  %r282 = add i32 0, 0
  %r283 = add i32 0, 0
  br label %bb34

bb34:
  %r206 = load i32, i32* @m
  %r207 = icmp ne i32 %r206, 0
  br i1 %r207, label %bb35, label %bb36

bb35:
  %r208 = call i32 @getch()
  %r284 = add i32 %r208, 0
  br label %bb37

bb37:
  %r285 = phi i32 [ %r284, %bb35 ], [ %r290, %bb38 ]
  %r210 = icmp ne i32 %r285, 81
  br i1 %r210, label %bb40, label %bb39

bb40:
  %r212 = icmp ne i32 %r285, 85
  br i1 %r212, label %bb38, label %bb39

bb38:
  %r213 = call i32 @getch()
  %r290 = add i32 %r213, 0
  br label %bb37

bb39:
  %r215 = icmp eq i32 %r285, 81
  br i1 %r215, label %bb41, label %bb42

bb41:
  %r216 = call i32 @quickread()
  %r288 = add i32 %r216, 0
  %r217 = call i32 @quickread()
  %r289 = add i32 %r217, 0
  call void @clear()
  %r220 = call i32 @same(i32 %r288, i32 %r289)
  call void @putint(i32 %r220)
  call void @putch(i32 10)
  br label %bb43

bb42:
  %r221 = call i32 @quickread()
  %r286 = add i32 %r221, 0
  %r222 = call i32 @quickread()
  %r287 = add i32 %r222, 0
  call void @addedge(i32 %r286, i32 %r287)
  br label %bb43

bb43:
  %r225 = load i32, i32* @m
  %r226 = sub i32 %r225, 1
  store i32 %r226, i32* @m
  br label %bb34

bb36:
  call void @_sysy_stoptime(i32 96)
  ret i32 0
}

