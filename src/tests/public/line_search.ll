declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @main( ) {
bb1:
  %r151 = add i32 0, 0
  %r152 = add i32 0, 0
  %r153 = add i32 0, 0
  %r154 = add i32 0, 0
  %r155 = add i32 0, 0
  %r156 = add i32 0, 0
  %r157 = add i32 0, 0
  call void @_sysy_starttime(i32 3)
  %r158 = add i32 0, 0
  %r159 = add i32 0, 0
  %r102 = alloca [ 10 x i32 ]
  %r160 = add i32 0, 0
  %r161 = add i32 0, 0
  br label %bb2

bb2:
  %r162 = phi i32 [ %r161, %bb1 ], [ %r181, %bb3 ]
  %r104 = icmp slt i32 %r162, 10
  br i1 %r104, label %bb3, label %bb4

bb3:
  %r106 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r162
  %r108 = add i32 %r162, 1
  store i32 %r108, i32* %r106
  %r110 = add i32 %r162, 1
  %r181 = add i32 %r110, 0
  br label %bb2

bb4:
  %r163 = add i32 10, 0
  %r116 = call i32 @getint()
  %r164 = add i32 %r116, 0
  %r118 = sub i32 %r163, 1
  %r165 = add i32 %r118, 0
  %r166 = add i32 0, 0
  %r121 = add i32 %r165, %r166
  %r122 = sdiv i32 %r121, 2
  %r167 = add i32 %r122, 0
  %r168 = add i32 0, 0
  %r169 = add i32 0, 0
  %r170 = add i32 0, 0
  br label %bb5

bb5:
  %r171 = phi i32 [ %r169, %bb4 ], [ %r178, %bb10 ]
  %r172 = phi i32 [ %r168, %bb4 ], [ %r176, %bb10 ]
  %r173 = phi i32 [ %r170, %bb4 ], [ %r177, %bb10 ]
  %r126 = icmp slt i32 %r171, 10
  br i1 %r126, label %bb8, label %bb7

bb8:
  %r128 = icmp eq i32 %r172, 0
  br i1 %r128, label %bb6, label %bb7

bb6:
  %r130 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r171
  %r131 = load i32, i32* %r130
  %r133 = icmp eq i32 %r131, %r164
  br i1 %r133, label %bb9, label %bb10

bb9:
  %r179 = add i32 1, 0
  %r180 = add i32 %r171, 0
  br label %bb10

bb10:
  %r176 = phi i32 [ %r172, %bb6 ], [ %r179, %bb9 ]
  %r177 = phi i32 [ %r173, %bb6 ], [ %r180, %bb9 ]
  %r136 = add i32 %r171, 1
  %r178 = add i32 %r136, 0
  br label %bb5

bb7:
  %r138 = icmp eq i32 %r172, 1
  br i1 %r138, label %bb11, label %bb12

bb11:
  call void @putint(i32 %r173)
  br label %bb13

bb12:
  %r175 = add i32 0, 0
  call void @putint(i32 %r175)
  br label %bb13

bb13:
  %r174 = add i32 10, 0
  call void @putch(i32 %r174)
  call void @_sysy_stoptime(i32 53)
  ret i32 0
}

