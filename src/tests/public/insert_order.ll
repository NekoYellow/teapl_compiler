declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@N = global i32 0
define i32 @insert( i32* %r100, i32 %r101 ) {
bb1:
  %r162 = add i32 0, 0
  %r163 = add i32 0, 0
  %r164 = add i32 %r101, 0
  %r165 = add i32 0, 0
  %r166 = add i32 0, 0
  %r167 = add i32 0, 0
  br label %bb2

bb2:
  %r168 = phi i32 [ %r167, %bb1 ], [ %r173, %bb3 ]
  %r107 = getelementptr [11 x i32 ], [11 x i32 ]* %r100, i32 0, i32 %r168
  %r108 = load i32, i32* %r107
  %r109 = icmp sgt i32 %r164, %r108
  br i1 %r109, label %bb5, label %bb4

bb5:
  %r111 = load i32, i32* @N
  %r112 = icmp slt i32 %r168, %r111
  br i1 %r112, label %bb3, label %bb4

bb3:
  %r114 = add i32 %r168, 1
  %r173 = add i32 %r114, 0
  br label %bb2

bb4:
  %r115 = load i32, i32* @N
  %r169 = add i32 %r115, 0
  br label %bb6

bb6:
  %r170 = phi i32 [ %r169, %bb4 ], [ %r172, %bb7 ]
  %r118 = icmp sgt i32 %r170, %r168
  br i1 %r118, label %bb7, label %bb8

bb7:
  %r121 = sub i32 %r170, 1
  %r171 = add i32 %r121, 0
  %r123 = getelementptr [11 x i32 ], [11 x i32 ]* %r100, i32 0, i32 %r170
  %r125 = getelementptr [11 x i32 ], [11 x i32 ]* %r100, i32 0, i32 %r171
  %r126 = load i32, i32* %r125
  store i32 %r126, i32* %r123
  %r128 = getelementptr [11 x i32 ], [11 x i32 ]* %r100, i32 0, i32 %r168
  store i32 %r164, i32* %r128
  %r131 = sub i32 %r170, 1
  %r172 = add i32 %r131, 0
  br label %bb6

bb8:
  ret i32 0
}

define i32 @main( ) {
bb9:
  call void @_sysy_starttime(i32 27)
  store i32 10, i32* @N
  %r132 = alloca [ 11 x i32 ]
  %r133 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 0
  store i32 1, i32* %r133
  %r134 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 1
  store i32 3, i32* %r134
  %r135 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 2
  store i32 4, i32* %r135
  %r136 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 3
  store i32 7, i32* %r136
  %r137 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 4
  store i32 8, i32* %r137
  %r138 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 5
  store i32 11, i32* %r138
  %r139 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 6
  store i32 13, i32* %r139
  %r140 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 7
  store i32 18, i32* %r140
  %r141 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 8
  store i32 56, i32* %r141
  %r142 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 9
  store i32 78, i32* %r142
  %r176 = add i32 0, 0
  %r177 = add i32 0, 0
  %r178 = add i32 0, 0
  %r145 = call i32 @getint()
  %r179 = add i32 %r145, 0
  %r147 = call i32 @insert(i32* %r132, i32 %r179)
  %r180 = add i32 %r147, 0
  br label %bb10

bb10:
  %r181 = phi i32 [ %r178, %bb9 ], [ %r184, %bb11 ]
  %r149 = load i32, i32* @N
  %r150 = icmp slt i32 %r181, %r149
  br i1 %r150, label %bb11, label %bb12

bb11:
  %r152 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 %r181
  %r153 = load i32, i32* %r152
  %r182 = add i32 %r153, 0
  call void @putint(i32 %r182)
  %r183 = add i32 10, 0
  call void @putch(i32 %r183)
  %r157 = add i32 %r181, 1
  %r184 = add i32 %r157, 0
  br label %bb10

bb12:
  call void @_sysy_stoptime(i32 54)
  ret i32 0
}

