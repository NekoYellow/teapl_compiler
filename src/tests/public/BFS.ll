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
@que = global [ 1005 x i32 ] zeroinitializer
@h = global i32 0
@tail = global i32 0
@inq = global [ 1005 x i32 ] zeroinitializer
define i32 @quickread( ) {
bb1:
  %r255 = add i32 0, 0
  %r101 = call i32 @getch()
  %r256 = add i32 %r101, 0
  %r257 = add i32 0, 0
  %r258 = add i32 0, 0
  %r259 = add i32 0, 0
  %r260 = add i32 0, 0
  br label %bb2

bb2:
  %r261 = phi i32 [ %r256, %bb1 ], [ %r264, %bb7 ]
  %r262 = phi i32 [ %r260, %bb1 ], [ %r263, %bb7 ]
  %r105 = icmp slt i32 %r261, 48
  br i1 %r105, label %bb3, label %bb5

bb5:
  %r107 = icmp sgt i32 %r261, 57
  br i1 %r107, label %bb3, label %bb4

bb3:
  %r109 = icmp eq i32 %r261, 45
  br i1 %r109, label %bb6, label %bb7

bb6:
  %r265 = add i32 1, 0
  br label %bb7

bb7:
  %r263 = phi i32 [ %r262, %bb3 ], [ %r265, %bb6 ]
  %r110 = call i32 @getch()
  %r264 = add i32 %r110, 0
  br label %bb2

bb4:
  br label %bb8

bb8:
  %r266 = phi i32 [ %r258, %bb4 ], [ %r268, %bb9 ]
  %r267 = phi i32 [ %r261, %bb4 ], [ %r269, %bb9 ]
  %r112 = icmp sge i32 %r267, 48
  br i1 %r112, label %bb11, label %bb10

bb11:
  %r114 = icmp sle i32 %r267, 57
  br i1 %r114, label %bb9, label %bb10

bb9:
  %r116 = mul i32 %r266, 10
  %r118 = add i32 %r116, %r267
  %r119 = sub i32 %r118, 48
  %r268 = add i32 %r119, 0
  %r120 = call i32 @getch()
  %r269 = add i32 %r120, 0
  br label %bb8

bb10:
  %r122 = icmp ne i32 %r262, 0
  br i1 %r122, label %bb12, label %bb13

bb12:
  %r124 = sub i32 0, %r266
  ret i32 %r124
bb13:
  ret i32 %r266
}

define void @addedge( i32 %r126, i32 %r128 ) {
bb15:
  %r272 = add i32 0, 0
  %r273 = add i32 %r126, 0
  %r274 = add i32 0, 0
  %r275 = add i32 %r128, 0
  %r130 = load i32, i32* @cnt
  %r131 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r130
  store i32 %r275, i32* %r131
  %r133 = load i32, i32* @cnt
  %r134 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r133
  %r136 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r273
  %r137 = load i32, i32* %r136
  store i32 %r137, i32* %r134
  %r139 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r273
  %r140 = load i32, i32* @cnt
  store i32 %r140, i32* %r139
  %r141 = load i32, i32* @cnt
  %r142 = add i32 %r141, 1
  store i32 %r142, i32* @cnt
  %r143 = load i32, i32* @cnt
  %r144 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r143
  store i32 %r273, i32* %r144
  %r146 = load i32, i32* @cnt
  %r147 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r146
  %r149 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r275
  %r150 = load i32, i32* %r149
  store i32 %r150, i32* %r147
  %r152 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r275
  %r153 = load i32, i32* @cnt
  store i32 %r153, i32* %r152
  %r154 = load i32, i32* @cnt
  %r155 = add i32 %r154, 1
  store i32 %r155, i32* @cnt
  ret void
}

define void @init( ) {
bb16:
  %r277 = add i32 0, 0
  %r278 = add i32 0, 0
  br label %bb17

bb17:
  %r279 = phi i32 [ %r278, %bb16 ], [ %r280, %bb18 ]
  %r158 = icmp slt i32 %r279, 1005
  br i1 %r158, label %bb18, label %bb19

bb18:
  %r160 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r279
  store i32 -1, i32* %r160
  %r162 = add i32 %r279, 1
  %r280 = add i32 %r162, 0
  br label %bb17

bb19:
  ret void
}

define void @inqueue( i32 %r163 ) {
bb20:
  %r282 = add i32 0, 0
  %r283 = add i32 %r163, 0
  %r166 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r283
  store i32 1, i32* %r166
  %r167 = load i32, i32* @tail
  %r168 = add i32 %r167, 1
  store i32 %r168, i32* @tail
  %r169 = load i32, i32* @tail
  %r170 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r169
  store i32 %r283, i32* %r170
  ret void
}

define i32 @popqueue( ) {
bb21:
  %r172 = load i32, i32* @h
  %r173 = add i32 %r172, 1
  store i32 %r173, i32* @h
  %r285 = add i32 0, 0
  %r175 = load i32, i32* @h
  %r176 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r175
  %r177 = load i32, i32* %r176
  %r286 = add i32 %r177, 0
  %r178 = load i32, i32* @h
  %r179 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r178
  %r180 = load i32, i32* %r179
  ret i32 %r180
}

define i32 @same( i32 %r181, i32 %r183 ) {
bb22:
  %r293 = add i32 0, 0
  %r294 = add i32 %r181, 0
  %r295 = add i32 0, 0
  %r296 = add i32 %r183, 0
  store i32 0, i32* @h
  store i32 0, i32* @tail
  call void @inqueue(i32 %r294)
  %r297 = add i32 0, 0
  %r298 = add i32 0, 0
  %r299 = add i32 0, 0
  %r300 = add i32 0, 0
  %r301 = add i32 0, 0
  %r302 = add i32 0, 0
  %r303 = add i32 0, 0
  %r304 = add i32 0, 0
  br label %bb23

bb23:
  %r305 = phi i32 [ %r298, %bb22 ], [ %r311, %bb30 ]
  %r190 = load i32, i32* @h
  %r191 = load i32, i32* @tail
  %r192 = icmp slt i32 %r190, %r191
  br i1 %r192, label %bb24, label %bb25

bb24:
  %r193 = call i32 @popqueue()
  %r310 = add i32 %r193, 0
  %r196 = icmp eq i32 %r310, %r296
  br i1 %r196, label %bb26, label %bb27

bb26:
  %r316 = add i32 1, 0
  br label %bb27

bb27:
  %r311 = phi i32 [ %r305, %bb24 ], [ %r316, %bb26 ]
  %r198 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r310
  %r199 = load i32, i32* %r198
  %r312 = add i32 %r199, 0
  br label %bb28

bb28:
  %r313 = phi i32 [ %r312, %bb27 ], [ %r315, %bb32 ]
  %r201 = icmp ne i32 %r313, -1
  br i1 %r201, label %bb29, label %bb30

bb29:
  %r203 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r313
  %r204 = load i32, i32* %r203
  %r314 = add i32 %r204, 0
  %r206 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r314
  %r207 = load i32, i32* %r206
  %r208 = icmp eq i32 %r207, 0
  br i1 %r208, label %bb31, label %bb32

bb31:
  %r210 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r313
  %r211 = load i32, i32* %r210
  call void @inqueue(i32 %r211)
  br label %bb32

bb32:
  %r213 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r313
  %r214 = load i32, i32* %r213
  %r315 = add i32 %r214, 0
  br label %bb28

bb30:
  br label %bb23

bb25:
  %r306 = add i32 0, 0
  br label %bb33

bb33:
  %r307 = phi i32 [ %r306, %bb25 ], [ %r309, %bb34 ]
  %r216 = load i32, i32* @tail
  %r217 = icmp sle i32 %r307, %r216
  br i1 %r217, label %bb34, label %bb35

bb34:
  %r219 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r307
  %r220 = load i32, i32* %r219
  %r308 = add i32 %r220, 0
  %r222 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r308
  store i32 0, i32* %r222
  %r224 = add i32 %r307, 1
  %r309 = add i32 %r224, 0
  br label %bb33

bb35:
  ret i32 %r305
}

define i32 @main( ) {
bb36:
  %r226 = call i32 @quickread()
  store i32 %r226, i32* @n
  %r227 = call i32 @quickread()
  store i32 %r227, i32* @m
  call void @_sysy_starttime(i32 97)
  call void @init()
  %r320 = add i32 0, 0
  %r321 = add i32 0, 0
  %r322 = add i32 0, 0
  %r323 = add i32 0, 0
  %r324 = add i32 0, 0
  %r325 = add i32 0, 0
  br label %bb37

bb37:
  %r231 = load i32, i32* @m
  %r232 = icmp ne i32 %r231, 0
  br i1 %r232, label %bb38, label %bb39

bb38:
  %r233 = call i32 @getch()
  %r326 = add i32 %r233, 0
  br label %bb40

bb40:
  %r327 = phi i32 [ %r326, %bb38 ], [ %r332, %bb41 ]
  %r235 = icmp ne i32 %r327, 81
  br i1 %r235, label %bb43, label %bb42

bb43:
  %r237 = icmp ne i32 %r327, 85
  br i1 %r237, label %bb41, label %bb42

bb41:
  %r238 = call i32 @getch()
  %r332 = add i32 %r238, 0
  br label %bb40

bb42:
  %r240 = icmp eq i32 %r327, 81
  br i1 %r240, label %bb44, label %bb45

bb44:
  %r241 = call i32 @quickread()
  %r330 = add i32 %r241, 0
  %r242 = call i32 @quickread()
  %r331 = add i32 %r242, 0
  %r245 = call i32 @same(i32 %r330, i32 %r331)
  call void @putint(i32 %r245)
  call void @putch(i32 10)
  br label %bb46

bb45:
  %r246 = call i32 @quickread()
  %r328 = add i32 %r246, 0
  %r247 = call i32 @quickread()
  %r329 = add i32 %r247, 0
  call void @addedge(i32 %r328, i32 %r329)
  br label %bb46

bb46:
  %r250 = load i32, i32* @m
  %r251 = sub i32 %r250, 1
  store i32 %r251, i32* @m
  br label %bb37

bb39:
  call void @_sysy_stoptime(i32 117)
  ret i32 0
}

