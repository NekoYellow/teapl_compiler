declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @mod( i32 %r100, i32 %r102 ) {
bb1:
  %r148 = add i32 0, 0
  %r149 = add i32 %r100, 0
  %r150 = add i32 0, 0
  %r151 = add i32 %r102, 0
  %r107 = sdiv i32 %r149, %r151
  %r109 = mul i32 %r107, %r151
  %r110 = sub i32 %r149, %r109
  ret i32 %r110
}

define i32 @palindrome( i32 %r111 ) {
bb2:
  %r155 = add i32 0, 0
  %r156 = add i32 %r111, 0
  %r113 = alloca [ 4 x i32 ]
  %r157 = add i32 0, 0
  %r158 = add i32 0, 0
  %r159 = add i32 0, 0
  br label %bb3

bb3:
  %r160 = phi i32 [ %r156, %bb2 ], [ %r165, %bb4 ]
  %r161 = phi i32 [ %r159, %bb2 ], [ %r166, %bb4 ]
  %r117 = icmp slt i32 %r161, 4
  br i1 %r117, label %bb4, label %bb5

bb4:
  %r119 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 %r161
  %r121 = call i32 @mod(i32 %r160, i32 10)
  store i32 %r121, i32* %r119
  %r123 = sdiv i32 %r160, 10
  %r165 = add i32 %r123, 0
  %r125 = add i32 %r161, 1
  %r166 = add i32 %r125, 0
  br label %bb3

bb5:
  %r126 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 0
  %r127 = load i32, i32* %r126
  %r128 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 3
  %r129 = load i32, i32* %r128
  %r130 = icmp eq i32 %r127, %r129
  br i1 %r130, label %bb9, label %bb7

bb9:
  %r131 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 1
  %r132 = load i32, i32* %r131
  %r133 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 2
  %r134 = load i32, i32* %r133
  %r135 = icmp eq i32 %r132, %r134
  br i1 %r135, label %bb6, label %bb7

bb6:
  %r164 = add i32 1, 0
  br label %bb8

bb7:
  %r163 = add i32 0, 0
  br label %bb8

bb8:
  %r162 = phi i32 [ %r164, %bb6 ], [ %r163, %bb7 ]
  ret i32 %r162
}

define i32 @main( ) {
bb10:
  call void @_sysy_starttime(i32 30)
  %r169 = add i32 0, 0
  %r170 = add i32 1221, 0
  %r171 = add i32 0, 0
  %r140 = call i32 @palindrome(i32 %r170)
  %r172 = add i32 %r140, 0
  %r142 = icmp eq i32 %r172, 1
  br i1 %r142, label %bb11, label %bb12

bb11:
  call void @putint(i32 %r170)
  br label %bb13

bb12:
  %r174 = add i32 0, 0
  call void @putint(i32 %r174)
  br label %bb13

bb13:
  %r173 = add i32 10, 0
  call void @putch(i32 %r173)
  call void @_sysy_stoptime(i32 47)
  ret i32 0
}

