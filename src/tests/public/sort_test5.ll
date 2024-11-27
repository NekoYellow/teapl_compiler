declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @swap( i32* %r100, i32 %r101, i32 %r103 ) {
bb1:
  %r221 = add i32 0, 0
  %r222 = add i32 %r101, 0
  %r223 = add i32 0, 0
  %r224 = add i32 %r103, 0
  %r225 = add i32 0, 0
  %r107 = getelementptr [10 x i32 ], [10 x i32 ]* %r100, i32 0, i32 %r222
  %r108 = load i32, i32* %r107
  %r226 = add i32 %r108, 0
  %r110 = getelementptr [10 x i32 ], [10 x i32 ]* %r100, i32 0, i32 %r222
  %r112 = getelementptr [10 x i32 ], [10 x i32 ]* %r100, i32 0, i32 %r224
  %r113 = load i32, i32* %r112
  store i32 %r113, i32* %r110
  %r115 = getelementptr [10 x i32 ], [10 x i32 ]* %r100, i32 0, i32 %r224
  store i32 %r226, i32* %r115
  ret i32 0
}

define i32 @heap_ajust( i32* %r117, i32 %r118, i32 %r120 ) {
bb2:
  %r232 = add i32 0, 0
  %r233 = add i32 0, 0
  %r234 = add i32 %r118, 0
  %r235 = add i32 0, 0
  %r236 = add i32 %r120, 0
  %r237 = add i32 0, 0
  %r238 = add i32 %r234, 0
  %r239 = add i32 0, 0
  %r126 = mul i32 %r238, 2
  %r127 = add i32 %r126, 1
  %r240 = add i32 %r127, 0
  br label %bb3

bb3:
  %r241 = phi i32 [ %r240, %bb2 ], [ %r247, %bb11 ]
  %r242 = phi i32 [ %r238, %bb2 ], [ %r246, %bb11 ]
  %r130 = add i32 %r236, 1
  %r131 = icmp slt i32 %r241, %r130
  br i1 %r131, label %bb4, label %bb5

bb4:
  %r134 = add i32 %r241, 1
  %r243 = add i32 %r134, 0
  %r137 = icmp slt i32 %r241, %r236
  br i1 %r137, label %bb8, label %bb7

bb8:
  %r139 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r241
  %r140 = load i32, i32* %r139
  %r142 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r243
  %r143 = load i32, i32* %r142
  %r144 = icmp slt i32 %r140, %r143
  br i1 %r144, label %bb6, label %bb7

bb6:
  %r146 = add i32 %r241, 1
  %r248 = add i32 %r146, 0
  br label %bb7

bb7:
  %r244 = phi i32 [ %r241, %bb4 ], [ %r241, %bb8 ], [ %r248, %bb6 ]
  %r148 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r242
  %r149 = load i32, i32* %r148
  %r151 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r244
  %r152 = load i32, i32* %r151
  %r153 = icmp sgt i32 %r149, %r152
  br i1 %r153, label %bb9, label %bb10

bb9:
  ret i32 0
bb10:
  %r156 = call i32 @swap(i32* %r117, i32 %r242, i32 %r244)
  %r245 = add i32 %r156, 0
  %r246 = add i32 %r244, 0
  %r159 = mul i32 %r246, 2
  %r160 = add i32 %r159, 1
  %r247 = add i32 %r160, 0
  br label %bb11

bb11:
  br label %bb3

bb5:
  ret i32 0
}

define i32 @heap_sort( i32* %r161, i32 %r162 ) {
bb12:
  %r253 = add i32 0, 0
  %r254 = add i32 0, 0
  %r255 = add i32 %r162, 0
  %r256 = add i32 0, 0
  %r257 = add i32 0, 0
  %r167 = sdiv i32 %r255, 2
  %r168 = sub i32 %r167, 1
  %r258 = add i32 %r168, 0
  br label %bb13

bb13:
  %r259 = phi i32 [ %r258, %bb12 ], [ %r269, %bb14 ]
  %r170 = icmp sgt i32 %r259, -1
  br i1 %r170, label %bb14, label %bb15

bb14:
  %r172 = sub i32 %r255, 1
  %r267 = add i32 %r172, 0
  %r175 = call i32 @heap_ajust(i32* %r161, i32 %r259, i32 %r267)
  %r268 = add i32 %r175, 0
  %r177 = sub i32 %r259, 1
  %r269 = add i32 %r177, 0
  br label %bb13

bb15:
  %r179 = sub i32 %r255, 1
  %r260 = add i32 %r179, 0
  br label %bb16

bb16:
  %r261 = phi i32 [ %r260, %bb15 ], [ %r266, %bb17 ]
  %r181 = icmp sgt i32 %r261, 0
  br i1 %r181, label %bb17, label %bb18

bb17:
  %r262 = add i32 0, 0
  %r185 = call i32 @swap(i32* %r161, i32 %r262, i32 %r261)
  %r263 = add i32 %r185, 0
  %r187 = sub i32 %r261, 1
  %r264 = add i32 %r187, 0
  %r190 = call i32 @heap_ajust(i32* %r161, i32 %r262, i32 %r264)
  %r265 = add i32 %r190, 0
  %r192 = sub i32 %r261, 1
  %r266 = add i32 %r192, 0
  br label %bb16

bb18:
  ret i32 0
}

define i32 @main( ) {
bb19:
  %r272 = add i32 0, 0
  call void @_sysy_starttime(i32 50)
  store i32 10, i32* @n
  %r193 = alloca [ 10 x i32 ]
  %r194 = getelementptr [10 x i32 ], [10 x i32 ]* %r193, i32 0, i32 0
  store i32 4, i32* %r194
  %r195 = getelementptr [10 x i32 ], [10 x i32 ]* %r193, i32 0, i32 1
  store i32 3, i32* %r195
  %r196 = getelementptr [10 x i32 ], [10 x i32 ]* %r193, i32 0, i32 2
  store i32 9, i32* %r196
  %r197 = getelementptr [10 x i32 ], [10 x i32 ]* %r193, i32 0, i32 3
  store i32 2, i32* %r197
  %r198 = getelementptr [10 x i32 ], [10 x i32 ]* %r193, i32 0, i32 4
  store i32 0, i32* %r198
  %r199 = getelementptr [10 x i32 ], [10 x i32 ]* %r193, i32 0, i32 5
  store i32 1, i32* %r199
  %r200 = getelementptr [10 x i32 ], [10 x i32 ]* %r193, i32 0, i32 6
  store i32 6, i32* %r200
  %r201 = getelementptr [10 x i32 ], [10 x i32 ]* %r193, i32 0, i32 7
  store i32 5, i32* %r201
  %r202 = getelementptr [10 x i32 ], [10 x i32 ]* %r193, i32 0, i32 8
  store i32 7, i32* %r202
  %r203 = getelementptr [10 x i32 ], [10 x i32 ]* %r193, i32 0, i32 9
  store i32 8, i32* %r203
  %r273 = add i32 0, 0
  %r274 = add i32 0, 0
  %r205 = load i32, i32* @n
  %r206 = call i32 @heap_sort(i32* %r193, i32 %r205)
  %r275 = add i32 %r206, 0
  br label %bb20

bb20:
  %r276 = phi i32 [ %r275, %bb19 ], [ %r279, %bb21 ]
  %r208 = load i32, i32* @n
  %r209 = icmp slt i32 %r276, %r208
  br i1 %r209, label %bb21, label %bb22

bb21:
  %r212 = getelementptr [10 x i32 ], [10 x i32 ]* %r193, i32 0, i32 %r276
  %r213 = load i32, i32* %r212
  %r277 = add i32 %r213, 0
  call void @putint(i32 %r277)
  %r278 = add i32 10, 0
  call void @putch(i32 %r278)
  %r217 = add i32 %r276, 1
  %r279 = add i32 %r217, 0
  br label %bb20

bb22:
  call void @_sysy_stoptime(i32 66)
  ret i32 0
}

