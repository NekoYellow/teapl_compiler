declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@N = global i32 0
@newline = global i32 0
define i32 @mod( i32 %r100, i32 %r102 ) {
bb1:
  %r144 = add i32 0, 0
  %r145 = add i32 %r100, 0
  %r146 = add i32 0, 0
  %r147 = add i32 %r102, 0
  %r107 = sdiv i32 %r145, %r147
  %r109 = mul i32 %r107, %r147
  %r110 = sub i32 %r145, %r109
  ret i32 %r110
}

define i32 @split( i32 %r111, i32* %r113 ) {
bb2:
  %r150 = add i32 0, 0
  %r151 = add i32 %r111, 0
  %r152 = add i32 0, 0
  %r115 = load i32, i32* @N
  %r116 = sub i32 %r115, 1
  %r153 = add i32 %r116, 0
  br label %bb3

bb3:
  %r154 = phi i32 [ %r151, %bb2 ], [ %r156, %bb4 ]
  %r155 = phi i32 [ %r153, %bb2 ], [ %r157, %bb4 ]
  %r118 = icmp ne i32 %r155, -1
  br i1 %r118, label %bb4, label %bb5

bb4:
  %r120 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 %r155
  %r122 = call i32 @mod(i32 %r154, i32 10)
  store i32 %r122, i32* %r120
  %r124 = sdiv i32 %r154, 10
  %r156 = add i32 %r124, 0
  %r126 = sub i32 %r155, 1
  %r157 = add i32 %r126, 0
  br label %bb3

bb5:
  ret i32 0
}

define i32 @main( ) {
bb6:
  call void @_sysy_starttime(i32 26)
  store i32 4, i32* @N
  store i32 10, i32* @newline
  %r161 = add i32 0, 0
  %r162 = add i32 0, 0
  %r129 = alloca [ 4 x i32 ]
  %r163 = add i32 1478, 0
  %r131 = call i32 @split(i32 %r163, i32* %r129)
  %r164 = add i32 %r131, 0
  %r165 = add i32 0, 0
  %r166 = add i32 0, 0
  br label %bb7

bb7:
  %r167 = phi i32 [ %r166, %bb6 ], [ %r169, %bb8 ]
  %r134 = icmp slt i32 %r167, 4
  br i1 %r134, label %bb8, label %bb9

bb8:
  %r136 = getelementptr [4 x i32 ], [4 x i32 ]* %r129, i32 0, i32 %r167
  %r137 = load i32, i32* %r136
  %r168 = add i32 %r137, 0
  call void @putint(i32 %r168)
  %r139 = load i32, i32* @newline
  call void @putch(i32 %r139)
  %r141 = add i32 %r167, 1
  %r169 = add i32 %r141, 0
  br label %bb7

bb9:
  call void @_sysy_stoptime(i32 42)
  ret i32 0
}

