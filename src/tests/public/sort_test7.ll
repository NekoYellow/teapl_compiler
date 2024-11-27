declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @Merge( i32* %r100, i32 %r101, i32 %r103, i32 %r105 ) {
bb1:
  %r269 = add i32 0, 0
  %r270 = add i32 0, 0
  %r271 = add i32 %r101, 0
  %r272 = add i32 0, 0
  %r273 = add i32 %r103, 0
  %r274 = add i32 0, 0
  %r275 = add i32 %r105, 0
  %r276 = add i32 0, 0
  %r110 = sub i32 %r273, %r271
  %r111 = add i32 %r110, 1
  %r277 = add i32 %r111, 0
  %r278 = add i32 0, 0
  %r115 = sub i32 %r275, %r273
  %r279 = add i32 %r115, 0
  %r116 = alloca [ 10 x i32 ]
  %r117 = alloca [ 10 x i32 ]
  %r280 = add i32 0, 0
  %r281 = add i32 0, 0
  %r282 = add i32 0, 0
  %r283 = add i32 0, 0
  %r284 = add i32 0, 0
  br label %bb2

bb2:
  %r285 = phi i32 [ %r281, %bb1 ], [ %r311, %bb3 ]
  %r123 = icmp slt i32 %r285, %r277
  br i1 %r123, label %bb3, label %bb4

bb3:
  %r126 = add i32 %r285, %r271
  %r310 = add i32 %r126, 0
  %r128 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r285
  %r130 = getelementptr [10 x i32 ], [10 x i32 ]* %r100, i32 0, i32 %r310
  %r131 = load i32, i32* %r130
  store i32 %r131, i32* %r128
  %r133 = add i32 %r285, 1
  %r311 = add i32 %r133, 0
  br label %bb2

bb4:
  br label %bb5

bb5:
  %r286 = phi i32 [ %r283, %bb4 ], [ %r309, %bb6 ]
  %r136 = icmp slt i32 %r286, %r279
  br i1 %r136, label %bb6, label %bb7

bb6:
  %r139 = add i32 %r286, %r273
  %r140 = add i32 %r139, 1
  %r308 = add i32 %r140, 0
  %r142 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r286
  %r144 = getelementptr [10 x i32 ], [10 x i32 ]* %r100, i32 0, i32 %r308
  %r145 = load i32, i32* %r144
  store i32 %r145, i32* %r142
  %r147 = add i32 %r286, 1
  %r309 = add i32 %r147, 0
  br label %bb5

bb7:
  %r287 = add i32 0, 0
  %r288 = add i32 0, 0
  %r289 = add i32 %r271, 0
  br label %bb8

bb8:
  %r290 = phi i32 [ %r289, %bb7 ], [ %r301, %bb14 ]
  %r291 = phi i32 [ %r288, %bb7 ], [ %r302, %bb14 ]
  %r292 = phi i32 [ %r287, %bb7 ], [ %r303, %bb14 ]
  %r152 = icmp ne i32 %r292, %r277
  br i1 %r152, label %bb11, label %bb10

bb11:
  %r155 = icmp ne i32 %r291, %r279
  br i1 %r155, label %bb9, label %bb10

bb9:
  %r157 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r292
  %r158 = load i32, i32* %r157
  %r160 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r291
  %r161 = load i32, i32* %r160
  %r162 = add i32 %r161, 1
  %r163 = icmp slt i32 %r158, %r162
  br i1 %r163, label %bb12, label %bb13

bb12:
  %r165 = getelementptr [10 x i32 ], [10 x i32 ]* %r100, i32 0, i32 %r290
  %r167 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r292
  %r168 = load i32, i32* %r167
  store i32 %r168, i32* %r165
  %r170 = add i32 %r290, 1
  %r306 = add i32 %r170, 0
  %r172 = add i32 %r292, 1
  %r307 = add i32 %r172, 0
  br label %bb14

bb13:
  %r174 = getelementptr [10 x i32 ], [10 x i32 ]* %r100, i32 0, i32 %r290
  %r176 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r291
  %r177 = load i32, i32* %r176
  store i32 %r177, i32* %r174
  %r179 = add i32 %r290, 1
  %r304 = add i32 %r179, 0
  %r181 = add i32 %r291, 1
  %r305 = add i32 %r181, 0
  br label %bb14

bb14:
  %r301 = phi i32 [ %r306, %bb12 ], [ %r304, %bb13 ]
  %r302 = phi i32 [ %r291, %bb12 ], [ %r305, %bb13 ]
  %r303 = phi i32 [ %r307, %bb12 ], [ %r292, %bb13 ]
  br label %bb8

bb10:
  br label %bb15

bb15:
  %r293 = phi i32 [ %r290, %bb10 ], [ %r299, %bb16 ]
  %r294 = phi i32 [ %r292, %bb10 ], [ %r300, %bb16 ]
  %r184 = icmp slt i32 %r294, %r277
  br i1 %r184, label %bb16, label %bb17

bb16:
  %r186 = getelementptr [10 x i32 ], [10 x i32 ]* %r100, i32 0, i32 %r293
  %r188 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r294
  %r189 = load i32, i32* %r188
  store i32 %r189, i32* %r186
  %r191 = add i32 %r293, 1
  %r299 = add i32 %r191, 0
  %r193 = add i32 %r294, 1
  %r300 = add i32 %r193, 0
  br label %bb15

bb17:
  br label %bb18

bb18:
  %r295 = phi i32 [ %r293, %bb17 ], [ %r297, %bb19 ]
  %r296 = phi i32 [ %r291, %bb17 ], [ %r298, %bb19 ]
  %r196 = icmp slt i32 %r296, %r279
  br i1 %r196, label %bb19, label %bb20

bb19:
  %r198 = getelementptr [10 x i32 ], [10 x i32 ]* %r100, i32 0, i32 %r295
  %r200 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r296
  %r201 = load i32, i32* %r200
  store i32 %r201, i32* %r198
  %r203 = add i32 %r295, 1
  %r297 = add i32 %r203, 0
  %r205 = add i32 %r296, 1
  %r298 = add i32 %r205, 0
  br label %bb18

bb20:
  ret i32 0
}

define i32 @MergeSort( i32* %r206, i32 %r207, i32 %r209 ) {
bb21:
  %r316 = add i32 0, 0
  %r317 = add i32 0, 0
  %r318 = add i32 0, 0
  %r319 = add i32 %r207, 0
  %r320 = add i32 0, 0
  %r321 = add i32 %r209, 0
  %r213 = icmp slt i32 %r319, %r321
  br i1 %r213, label %bb22, label %bb23

bb22:
  %r217 = add i32 %r319, %r321
  %r218 = sdiv i32 %r217, 2
  %r322 = add i32 %r218, 0
  %r222 = call i32 @MergeSort(i32* %r206, i32 %r319, i32 %r322)
  %r323 = add i32 %r222, 0
  %r224 = add i32 %r322, 1
  %r324 = add i32 %r224, 0
  %r227 = call i32 @MergeSort(i32* %r206, i32 %r324, i32 %r321)
  %r325 = add i32 %r227, 0
  %r231 = call i32 @Merge(i32* %r206, i32 %r319, i32 %r322, i32 %r321)
  %r326 = add i32 %r231, 0
  br label %bb23

bb23:
  ret i32 0
}

define i32 @main( ) {
bb24:
  call void @_sysy_starttime(i32 71)
  store i32 10, i32* @n
  %r232 = alloca [ 10 x i32 ]
  %r233 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 0
  store i32 4, i32* %r233
  %r234 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 1
  store i32 3, i32* %r234
  %r235 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 2
  store i32 9, i32* %r235
  %r236 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 3
  store i32 2, i32* %r236
  %r237 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 4
  store i32 0, i32* %r237
  %r238 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 5
  store i32 1, i32* %r238
  %r239 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 6
  store i32 6, i32* %r239
  %r240 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 7
  store i32 5, i32* %r240
  %r241 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 8
  store i32 7, i32* %r241
  %r242 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 9
  store i32 8, i32* %r242
  %r329 = add i32 0, 0
  %r330 = add i32 0, 0
  %r331 = add i32 0, 0
  %r245 = load i32, i32* @n
  %r246 = sub i32 %r245, 1
  %r332 = add i32 %r246, 0
  %r249 = call i32 @MergeSort(i32* %r232, i32 %r330, i32 %r332)
  %r333 = add i32 %r249, 0
  br label %bb25

bb25:
  %r334 = phi i32 [ %r333, %bb24 ], [ %r337, %bb26 ]
  %r251 = load i32, i32* @n
  %r252 = icmp slt i32 %r334, %r251
  br i1 %r252, label %bb26, label %bb27

bb26:
  %r254 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 %r334
  %r255 = load i32, i32* %r254
  %r335 = add i32 %r255, 0
  call void @putint(i32 %r335)
  %r336 = add i32 10, 0
  call void @putch(i32 %r336)
  %r259 = add i32 %r334, 1
  %r337 = add i32 %r259, 0
  br label %bb25

bb27:
  call void @_sysy_stoptime(i32 97)
  ret i32 0
}

