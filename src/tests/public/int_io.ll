declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@ascii_0 = global i32 48
define i32 @my_getint( ) {
bb1:
  %r169 = add i32 0, 0
  %r170 = add i32 0, 0
  %r171 = add i32 0, 0
  br label %bb2

bb2:
  %r172 = phi i32 [ %r171, %bb1 ], [ %r178, %bb5 ]
  %r102 = icmp sgt i32 1, 0
  br i1 %r102, label %bb3, label %bb4

bb3:
  %r103 = call i32 @getch()
  %r104 = load i32, i32* @ascii_0
  %r105 = sub i32 %r103, %r104
  %r178 = add i32 %r105, 0
  %r107 = icmp slt i32 %r178, 0
  br i1 %r107, label %bb5, label %bb8

bb8:
  %r109 = icmp sgt i32 %r178, 9
  br i1 %r109, label %bb5, label %bb6

bb5:
  br label %bb2

bb6:
  br label %bb4

bb4:
  %r173 = phi i32 [ %r172, %bb2 ], [ %r178, %bb6 ]
  %r174 = add i32 %r173, 0
  br label %bb9

bb9:
  %r175 = phi i32 [ %r174, %bb4 ], [ %r177, %bb14 ]
  %r111 = icmp sgt i32 1, 0
  br i1 %r111, label %bb10, label %bb11

bb10:
  %r112 = call i32 @getch()
  %r113 = load i32, i32* @ascii_0
  %r114 = sub i32 %r112, %r113
  %r176 = add i32 %r114, 0
  %r116 = icmp sge i32 %r176, 0
  br i1 %r116, label %bb15, label %bb13

bb15:
  %r118 = icmp sle i32 %r176, 9
  br i1 %r118, label %bb12, label %bb13

bb12:
  %r120 = mul i32 %r175, 10
  %r122 = add i32 %r120, %r176
  %r177 = add i32 %r122, 0
  br label %bb14

bb13:
  br label %bb11

bb14:
  br label %bb9

bb11:
  ret i32 %r175
}

define i32 @mod( i32 %r124, i32 %r126 ) {
bb16:
  %r181 = add i32 0, 0
  %r182 = add i32 %r124, 0
  %r183 = add i32 0, 0
  %r184 = add i32 %r126, 0
  %r131 = sdiv i32 %r182, %r184
  %r133 = mul i32 %r131, %r184
  %r134 = sub i32 %r182, %r133
  ret i32 %r134
}

define void @my_putint( i32 %r135 ) {
bb17:
  %r187 = add i32 0, 0
  %r188 = add i32 %r135, 0
  %r137 = alloca [ 16 x i32 ]
  %r189 = add i32 0, 0
  %r190 = add i32 0, 0
  br label %bb18

bb18:
  %r191 = phi i32 [ %r188, %bb17 ], [ %r195, %bb19 ]
  %r192 = phi i32 [ %r190, %bb17 ], [ %r196, %bb19 ]
  %r140 = icmp sgt i32 %r191, 0
  br i1 %r140, label %bb19, label %bb20

bb19:
  %r142 = getelementptr [16 x i32 ], [16 x i32 ]* %r137, i32 0, i32 %r192
  %r144 = call i32 @mod(i32 %r191, i32 10)
  %r145 = load i32, i32* @ascii_0
  %r146 = add i32 %r144, %r145
  store i32 %r146, i32* %r142
  %r148 = sdiv i32 %r191, 10
  %r195 = add i32 %r148, 0
  %r150 = add i32 %r192, 1
  %r196 = add i32 %r150, 0
  br label %bb18

bb20:
  br label %bb21

bb21:
  %r193 = phi i32 [ %r192, %bb20 ], [ %r194, %bb22 ]
  %r152 = icmp sgt i32 %r193, 0
  br i1 %r152, label %bb22, label %bb23

bb22:
  %r154 = sub i32 %r193, 1
  %r194 = add i32 %r154, 0
  %r156 = getelementptr [16 x i32 ], [16 x i32 ]* %r137, i32 0, i32 %r194
  %r157 = load i32, i32* %r156
  call void @putch(i32 %r157)
  br label %bb21

bb23:
  ret void
}

define i32 @main( ) {
bb24:
  %r199 = add i32 0, 0
  call void @_sysy_starttime(i32 51)
  %r200 = add i32 0, 0
  %r159 = call i32 @my_getint()
  %r201 = add i32 %r159, 0
  br label %bb25

bb25:
  %r202 = phi i32 [ %r201, %bb24 ], [ %r204, %bb26 ]
  %r161 = icmp sgt i32 %r202, 0
  br i1 %r161, label %bb26, label %bb27

bb26:
  %r163 = call i32 @my_getint()
  %r203 = add i32 %r163, 0
  call void @my_putint(i32 %r203)
  call void @putch(i32 10)
  %r166 = sub i32 %r202, 1
  %r204 = add i32 %r166, 0
  br label %bb25

bb27:
  call void @_sysy_stoptime(i32 58)
  ret i32 0
}

