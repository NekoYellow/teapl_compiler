declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@TAPE_LEN = global i32 65536
@BUFFER_LEN = global i32 32768
@tape = global [ 65536 x i32 ] zeroinitializer
@program = global [ 32768 x i32 ] zeroinitializer
@ptr = global i32 0
define void @read_program( ) {
bb1:
  %r183 = add i32 0, 0
  %r184 = add i32 0, 0
  %r185 = add i32 0, 0
  %r102 = call i32 @getint()
  %r186 = add i32 %r102, 0
  br label %bb2

bb2:
  %r187 = phi i32 [ %r184, %bb1 ], [ %r188, %bb3 ]
  %r105 = icmp slt i32 %r187, %r186
  br i1 %r105, label %bb3, label %bb4

bb3:
  %r107 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 %r187
  %r108 = call i32 @getch()
  store i32 %r108, i32* %r107
  %r110 = add i32 %r187, 1
  %r188 = add i32 %r110, 0
  br label %bb2

bb4:
  %r112 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 %r187
  store i32 0, i32* %r112
  ret void
}

define void @interpret( i32* %r113 ) {
bb5:
  %r192 = add i32 0, 0
  %r193 = add i32 0, 0
  %r194 = add i32 0, 0
  %r195 = add i32 0, 0
  br label %bb6

bb6:
  %r196 = phi i32 [ %r195, %bb5 ], [ %r199, %bb22 ]
  %r118 = getelementptr [65536 x i32 ], [65536 x i32 ]* %r113, i32 0, i32 %r196
  %r119 = load i32, i32* %r118
  %r120 = icmp ne i32 %r119, 0
  br i1 %r120, label %bb7, label %bb8

bb7:
  %r122 = getelementptr [65536 x i32 ], [65536 x i32 ]* %r113, i32 0, i32 %r196
  %r123 = load i32, i32* %r122
  %r197 = add i32 %r123, 0
  %r125 = icmp eq i32 %r197, 62
  br i1 %r125, label %bb9, label %bb10

bb9:
  %r126 = load i32, i32* @ptr
  %r127 = add i32 %r126, 1
  store i32 %r127, i32* @ptr
  br label %bb10

bb10:
  %r129 = icmp eq i32 %r197, 60
  br i1 %r129, label %bb11, label %bb12

bb11:
  %r130 = load i32, i32* @ptr
  %r131 = sub i32 %r130, 1
  store i32 %r131, i32* @ptr
  br label %bb12

bb12:
  %r133 = icmp eq i32 %r197, 43
  br i1 %r133, label %bb13, label %bb14

bb13:
  %r134 = load i32, i32* @ptr
  %r135 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r134
  %r136 = load i32, i32* @ptr
  %r137 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r136
  %r138 = load i32, i32* %r137
  %r139 = add i32 %r138, 1
  store i32 %r139, i32* %r135
  br label %bb14

bb14:
  %r141 = icmp eq i32 %r197, 45
  br i1 %r141, label %bb15, label %bb16

bb15:
  %r142 = load i32, i32* @ptr
  %r143 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r142
  %r144 = load i32, i32* @ptr
  %r145 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r144
  %r146 = load i32, i32* %r145
  %r147 = sub i32 %r146, 1
  store i32 %r147, i32* %r143
  br label %bb16

bb16:
  %r149 = icmp eq i32 %r197, 46
  br i1 %r149, label %bb17, label %bb18

bb17:
  %r150 = load i32, i32* @ptr
  %r151 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r150
  %r152 = load i32, i32* %r151
  call void @putch(i32 %r152)
  br label %bb18

bb18:
  %r154 = icmp eq i32 %r197, 44
  br i1 %r154, label %bb19, label %bb20

bb19:
  %r155 = load i32, i32* @ptr
  %r156 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r155
  %r157 = call i32 @getch()
  store i32 %r157, i32* %r156
  br label %bb20

bb20:
  %r159 = icmp eq i32 %r197, 93
  br i1 %r159, label %bb23, label %bb22

bb23:
  %r160 = load i32, i32* @ptr
  %r161 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r160
  %r162 = load i32, i32* %r161
  %r163 = icmp ne i32 %r162, 0
  br i1 %r163, label %bb21, label %bb22

bb21:
  %r200 = add i32 1, 0
  br label %bb24

bb24:
  %r201 = phi i32 [ %r196, %bb21 ], [ %r203, %bb30 ]
  %r202 = phi i32 [ %r200, %bb21 ], [ %r206, %bb30 ]
  %r165 = icmp sgt i32 %r202, 0
  br i1 %r165, label %bb25, label %bb26

bb25:
  %r167 = sub i32 %r201, 1
  %r203 = add i32 %r167, 0
  %r169 = getelementptr [65536 x i32 ], [65536 x i32 ]* %r113, i32 0, i32 %r203
  %r170 = load i32, i32* %r169
  %r204 = add i32 %r170, 0
  %r172 = icmp eq i32 %r204, 91
  br i1 %r172, label %bb27, label %bb28

bb27:
  %r174 = sub i32 %r202, 1
  %r208 = add i32 %r174, 0
  br label %bb28

bb28:
  %r205 = phi i32 [ %r202, %bb25 ], [ %r208, %bb27 ]
  %r176 = icmp eq i32 %r204, 93
  br i1 %r176, label %bb29, label %bb30

bb29:
  %r178 = add i32 %r205, 1
  %r207 = add i32 %r178, 0
  br label %bb30

bb30:
  %r206 = phi i32 [ %r205, %bb28 ], [ %r207, %bb29 ]
  br label %bb24

bb26:
  br label %bb22

bb22:
  %r198 = phi i32 [ %r196, %bb20 ], [ %r196, %bb23 ], [ %r201, %bb26 ]
  %r180 = add i32 %r198, 1
  %r199 = add i32 %r180, 0
  br label %bb6

bb8:
  ret void
}

define i32 @main( ) {
bb31:
  call void @_sysy_starttime(i32 76)
  call void @read_program()
  call void @interpret(i32* @program)
  call void @putch(i32 10)
  call void @_sysy_stoptime(i32 80)
  ret i32 0
}

