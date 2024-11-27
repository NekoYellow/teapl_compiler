declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @main( ) {
bb1:
  %r159 = add i32 0, 0
  %r160 = add i32 0, 0
  %r161 = add i32 0, 0
  %r162 = add i32 0, 0
  %r163 = add i32 0, 0
  call void @_sysy_starttime(i32 3)
  %r164 = add i32 0, 0
  %r165 = add i32 0, 0
  %r102 = alloca [ 10 x i32 ]
  %r166 = add i32 0, 0
  %r167 = add i32 0, 0
  br label %bb2

bb2:
  %r168 = phi i32 [ %r167, %bb1 ], [ %r184, %bb3 ]
  %r104 = icmp slt i32 %r168, 10
  br i1 %r104, label %bb3, label %bb4

bb3:
  %r106 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r168
  %r108 = add i32 %r168, 1
  store i32 %r108, i32* %r106
  %r110 = add i32 %r168, 1
  %r184 = add i32 %r110, 0
  br label %bb2

bb4:
  %r169 = add i32 10, 0
  %r116 = call i32 @getint()
  %r170 = add i32 %r116, 0
  %r118 = sub i32 %r169, 1
  %r171 = add i32 %r118, 0
  %r172 = add i32 0, 0
  %r121 = add i32 %r171, %r172
  %r122 = sdiv i32 %r121, 2
  %r173 = add i32 %r122, 0
  br label %bb5

bb5:
  %r174 = phi i32 [ %r172, %bb4 ], [ %r180, %bb11 ]
  %r175 = phi i32 [ %r173, %bb4 ], [ %r179, %bb11 ]
  %r176 = phi i32 [ %r171, %bb4 ], [ %r181, %bb11 ]
  %r124 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r175
  %r125 = load i32, i32* %r124
  %r127 = icmp ne i32 %r125, %r170
  br i1 %r127, label %bb8, label %bb7

bb8:
  %r130 = icmp slt i32 %r174, %r176
  br i1 %r130, label %bb6, label %bb7

bb6:
  %r133 = add i32 %r176, %r174
  %r134 = sdiv i32 %r133, 2
  %r179 = add i32 %r134, 0
  %r137 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r179
  %r138 = load i32, i32* %r137
  %r139 = icmp slt i32 %r170, %r138
  br i1 %r139, label %bb9, label %bb10

bb9:
  %r141 = sub i32 %r179, 1
  %r183 = add i32 %r141, 0
  br label %bb11

bb10:
  %r143 = add i32 %r179, 1
  %r182 = add i32 %r143, 0
  br label %bb11

bb11:
  %r180 = phi i32 [ %r174, %bb9 ], [ %r182, %bb10 ]
  %r181 = phi i32 [ %r183, %bb9 ], [ %r176, %bb10 ]
  br label %bb5

bb7:
  %r146 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r175
  %r147 = load i32, i32* %r146
  %r148 = icmp eq i32 %r170, %r147
  br i1 %r148, label %bb12, label %bb13

bb12:
  call void @putint(i32 %r170)
  br label %bb14

bb13:
  %r178 = add i32 0, 0
  call void @putint(i32 %r178)
  br label %bb14

bb14:
  %r177 = add i32 10, 0
  call void @putch(i32 %r177)
  call void @_sysy_stoptime(i32 49)
  ret i32 0
}

