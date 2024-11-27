declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @canJump( i32* %r100, i32 %r101 ) {
bb1:
  %r181 = add i32 0, 0
  %r182 = add i32 0, 0
  %r183 = add i32 0, 0
  %r110 = alloca [ 10 x i32 ]
  %r184 = add i32 0, 0
  %r185 = add i32 %r101, 0
  %r104 = icmp eq i32 %r185, 1
  br i1 %r104, label %bb2, label %bb3

bb2:
  ret i32 1
bb3:
  %r105 = getelementptr [10 x i32 ], [10 x i32 ]* %r100, i32 0, i32 0
  %r106 = load i32, i32* %r105
  %r108 = sub i32 %r185, 2
  %r109 = icmp sgt i32 %r106, %r108
  br i1 %r109, label %bb4, label %bb5

bb4:
  ret i32 1
bb5:
  %r186 = add i32 0, 0
  br label %bb6

bb6:
  %r187 = phi i32 [ %r186, %bb5 ], [ %r198, %bb7 ]
  %r114 = sub i32 %r185, 1
  %r115 = icmp slt i32 %r187, %r114
  br i1 %r115, label %bb7, label %bb8

bb7:
  %r117 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r187
  store i32 0, i32* %r117
  %r119 = add i32 %r187, 1
  %r198 = add i32 %r119, 0
  br label %bb6

bb8:
  %r122 = sub i32 %r185, 1
  %r188 = add i32 %r122, 0
  %r124 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r188
  store i32 1, i32* %r124
  %r126 = sub i32 %r185, 2
  %r189 = add i32 %r126, 0
  br label %bb9

bb9:
  %r190 = phi i32 [ %r189, %bb8 ], [ %r193, %bb17 ]
  %r128 = icmp sgt i32 %r190, -1
  br i1 %r128, label %bb10, label %bb11

bb10:
  %r131 = getelementptr [10 x i32 ], [10 x i32 ]* %r100, i32 0, i32 %r190
  %r132 = load i32, i32* %r131
  %r134 = sub i32 %r185, 1
  %r136 = sub i32 %r134, %r190
  %r137 = icmp slt i32 %r132, %r136
  br i1 %r137, label %bb12, label %bb13

bb12:
  %r139 = getelementptr [10 x i32 ], [10 x i32 ]* %r100, i32 0, i32 %r190
  %r140 = load i32, i32* %r139
  %r197 = add i32 %r140, 0
  br label %bb14

bb13:
  %r142 = sub i32 %r185, 1
  %r144 = sub i32 %r142, %r190
  %r196 = add i32 %r144, 0
  br label %bb14

bb14:
  %r191 = phi i32 [ %r197, %bb12 ], [ %r196, %bb13 ]
  br label %bb15

bb15:
  %r192 = phi i32 [ %r191, %bb14 ], [ %r195, %bb19 ]
  %r146 = icmp sgt i32 %r192, -1
  br i1 %r146, label %bb16, label %bb17

bb16:
  %r149 = add i32 %r190, %r192
  %r194 = add i32 %r149, 0
  %r151 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r194
  %r152 = load i32, i32* %r151
  %r153 = icmp ne i32 %r152, 0
  br i1 %r153, label %bb18, label %bb19

bb18:
  %r155 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r190
  store i32 1, i32* %r155
  br label %bb19

bb19:
  %r157 = sub i32 %r192, 1
  %r195 = add i32 %r157, 0
  br label %bb15

bb17:
  %r159 = sub i32 %r190, 1
  %r193 = add i32 %r159, 0
  br label %bb9

bb11:
  %r160 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 0
  %r161 = load i32, i32* %r160
  ret i32 %r161
}

define i32 @main( ) {
bb20:
  call void @_sysy_starttime(i32 42)
  %r200 = add i32 0, 0
  %r163 = alloca [ 10 x i32 ]
  %r164 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 0
  store i32 3, i32* %r164
  %r165 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 1
  store i32 3, i32* %r165
  %r166 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 2
  store i32 9, i32* %r166
  %r167 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 3
  store i32 0, i32* %r167
  %r168 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 4
  store i32 0, i32* %r168
  %r169 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 5
  store i32 1, i32* %r169
  %r170 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 6
  store i32 1, i32* %r170
  %r171 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 7
  store i32 5, i32* %r171
  %r172 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 8
  store i32 7, i32* %r172
  %r173 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 9
  store i32 8, i32* %r173
  %r201 = add i32 10, 0
  %r175 = call i32 @canJump(i32* %r163, i32 %r201)
  %r202 = add i32 %r175, 0
  call void @_sysy_stoptime(i32 49)
  ret i32 %r202
}

