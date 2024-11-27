declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @uniquePaths( i32 %r100, i32 %r102 ) {
bb1:
  %r188 = add i32 0, 0
  %r189 = add i32 0, 0
  %r190 = add i32 0, 0
  %r191 = add i32 0, 0
  %r192 = add i32 0, 0
  %r108 = alloca [ 9 x i32 ]
  %r193 = add i32 0, 0
  %r194 = add i32 %r100, 0
  %r195 = add i32 0, 0
  %r196 = add i32 %r102, 0
  %r105 = icmp eq i32 %r194, 1
  br i1 %r105, label %bb2, label %bb4

bb4:
  %r107 = icmp eq i32 %r196, 1
  br i1 %r107, label %bb2, label %bb3

bb2:
  ret i32 1
bb3:
  %r197 = add i32 0, 0
  br label %bb5

bb5:
  %r198 = phi i32 [ %r197, %bb3 ], [ %r213, %bb6 ]
  %r116 = icmp slt i32 %r198, %r194
  br i1 %r116, label %bb6, label %bb7

bb6:
  %r118 = mul i32 %r198, 3
  %r120 = add i32 %r118, %r196
  %r121 = sub i32 %r120, 1
  %r212 = add i32 %r121, 0
  %r123 = getelementptr [9 x i32 ], [9 x i32 ]* %r108, i32 0, i32 %r212
  store i32 1, i32* %r123
  %r125 = add i32 %r198, 1
  %r213 = add i32 %r125, 0
  br label %bb5

bb7:
  %r199 = add i32 0, 0
  br label %bb8

bb8:
  %r200 = phi i32 [ %r199, %bb7 ], [ %r211, %bb9 ]
  %r128 = icmp slt i32 %r200, %r196
  br i1 %r128, label %bb9, label %bb10

bb9:
  %r130 = sub i32 %r194, 1
  %r131 = mul i32 %r130, 3
  %r133 = add i32 %r131, %r200
  %r210 = add i32 %r133, 0
  %r135 = getelementptr [9 x i32 ], [9 x i32 ]* %r108, i32 0, i32 %r210
  store i32 1, i32* %r135
  %r137 = add i32 %r200, 1
  %r211 = add i32 %r137, 0
  br label %bb8

bb10:
  %r139 = sub i32 %r194, 2
  %r201 = add i32 %r139, 0
  br label %bb11

bb11:
  %r202 = phi i32 [ %r201, %bb10 ], [ %r205, %bb16 ]
  %r141 = icmp sgt i32 %r202, -1
  br i1 %r141, label %bb12, label %bb13

bb12:
  %r143 = sub i32 %r196, 2
  %r203 = add i32 %r143, 0
  br label %bb14

bb14:
  %r204 = phi i32 [ %r203, %bb12 ], [ %r209, %bb15 ]
  %r145 = icmp sgt i32 %r204, -1
  br i1 %r145, label %bb15, label %bb16

bb15:
  %r147 = mul i32 %r202, 3
  %r149 = add i32 %r147, %r204
  %r206 = add i32 %r149, 0
  %r151 = add i32 %r202, 1
  %r152 = mul i32 %r151, 3
  %r154 = add i32 %r152, %r204
  %r207 = add i32 %r154, 0
  %r156 = mul i32 %r202, 3
  %r158 = add i32 %r156, %r204
  %r159 = add i32 %r158, 1
  %r208 = add i32 %r159, 0
  %r161 = getelementptr [9 x i32 ], [9 x i32 ]* %r108, i32 0, i32 %r206
  %r163 = getelementptr [9 x i32 ], [9 x i32 ]* %r108, i32 0, i32 %r207
  %r164 = load i32, i32* %r163
  %r166 = getelementptr [9 x i32 ], [9 x i32 ]* %r108, i32 0, i32 %r208
  %r167 = load i32, i32* %r166
  %r168 = add i32 %r164, %r167
  store i32 %r168, i32* %r161
  %r170 = sub i32 %r204, 1
  %r209 = add i32 %r170, 0
  br label %bb14

bb16:
  %r172 = sub i32 %r202, 1
  %r205 = add i32 %r172, 0
  br label %bb11

bb13:
  %r173 = getelementptr [9 x i32 ], [9 x i32 ]* %r108, i32 0, i32 0
  %r174 = load i32, i32* %r173
  ret i32 %r174
}

define i32 @main( ) {
bb17:
  call void @_sysy_starttime(i32 40)
  %r216 = add i32 0, 0
  %r217 = add i32 0, 0
  %r218 = add i32 3, 0
  %r179 = call i32 @uniquePaths(i32 %r218, i32 %r218)
  %r219 = add i32 %r179, 0
  call void @_sysy_stoptime(i32 45)
  ret i32 %r219
}

