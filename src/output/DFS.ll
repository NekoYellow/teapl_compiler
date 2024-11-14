; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@n = global i32 0
@m = global i32 0
@to = global [5005 x i32] zeroinitializer
@next = global [5005 x i32] zeroinitializer
@head = global [1005 x i32] zeroinitializer
@cnt = global i32 0
@vis = global [1005 x i32] zeroinitializer
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @after_main, ptr null }]
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@_sysy_us = dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 4
@_sysy_s = dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 4
@_sysy_m = dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 4
@_sysy_h = dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 4
@_sysy_idx = dso_local local_unnamed_addr global i32 1, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"Timer@%04d-%04d: %dH-%dM-%dS-%dus\0A\00", align 1
@_sysy_l1 = dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 4
@_sysy_l2 = dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"TOTAL: %dH-%dM-%dS-%dus\0A\00", align 1
@_sysy_start = dso_local global %struct.timeval zeroinitializer, align 8
@_sysy_end = dso_local global %struct.timeval zeroinitializer, align 8

define i32 @quickread() {
quickread:
  %r100 = alloca i32, align 4
  %r101 = call i32 @getch()
  store i32 %r101, ptr %r100, align 4
  %r102 = alloca i32, align 4
  store i32 0, ptr %r102, align 4
  %r103 = alloca i32, align 4
  store i32 0, ptr %r103, align 4
  br label %bb1

bb1:                                              ; preds = %bb7, %quickread
  %r104 = load i32, ptr %r100, align 4
  %r105 = icmp slt i32 %r104, 48
  br i1 %r105, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %r106 = load i32, ptr %r100, align 4
  %r107 = icmp sgt i32 %r106, 57
  br i1 %r107, label %bb2, label %bb3

bb2:                                              ; preds = %bb4, %bb1
  %r108 = load i32, ptr %r100, align 4
  %r109 = icmp eq i32 %r108, 45
  br i1 %r109, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  store i32 1, ptr %r103, align 4
  br label %bb7

bb6:                                              ; preds = %bb2
  br label %bb7

bb7:                                              ; preds = %bb6, %bb5
  %r110 = call i32 @getch()
  store i32 %r110, ptr %r100, align 4
  br label %bb1

bb3:                                              ; preds = %bb4
  br label %bb8

bb8:                                              ; preds = %bb9, %bb3
  %r111 = load i32, ptr %r100, align 4
  %r112 = icmp sge i32 %r111, 48
  br i1 %r112, label %bb11, label %bb10

bb11:                                             ; preds = %bb8
  %r113 = load i32, ptr %r100, align 4
  %r114 = icmp sle i32 %r113, 57
  br i1 %r114, label %bb9, label %bb10

bb9:                                              ; preds = %bb11
  %r115 = load i32, ptr %r102, align 4
  %r116 = mul i32 %r115, 10
  %r117 = load i32, ptr %r100, align 4
  %r118 = add i32 %r116, %r117
  %r119 = sub i32 %r118, 48
  store i32 %r119, ptr %r102, align 4
  %r120 = call i32 @getch()
  store i32 %r120, ptr %r100, align 4
  br label %bb8

bb10:                                             ; preds = %bb11, %bb8
  %r121 = load i32, ptr %r103, align 4
  %r122 = icmp ne i32 %r121, 0
  br i1 %r122, label %bb12, label %bb13

bb12:                                             ; preds = %bb10
  %r123 = load i32, ptr %r102, align 4
  %r124 = sub i32 0, %r123
  ret i32 %r124

bb41:                                             ; No predecessors!
  br label %bb14

bb13:                                             ; preds = %bb10
  %r125 = load i32, ptr %r102, align 4
  ret i32 %r125

bb14:                                             ; preds = %bb41
  ret i32 0
}

define void @addedge(i32 %r126, i32 %r128) {
addedge:
  %r127 = alloca i32, align 4
  store i32 %r126, ptr %r127, align 4
  %r129 = alloca i32, align 4
  store i32 %r128, ptr %r129, align 4
  %r130 = load i32, ptr @cnt, align 4
  %r131 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r130
  %r132 = load i32, ptr %r129, align 4
  store i32 %r132, ptr %r131, align 4
  %r133 = load i32, ptr @cnt, align 4
  %r134 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r133
  %r135 = load i32, ptr %r127, align 4
  %r136 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r135
  %r137 = load i32, ptr %r136, align 4
  store i32 %r137, ptr %r134, align 4
  %r138 = load i32, ptr %r127, align 4
  %r139 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r138
  %r140 = load i32, ptr @cnt, align 4
  store i32 %r140, ptr %r139, align 4
  %r141 = load i32, ptr @cnt, align 4
  %r142 = add i32 %r141, 1
  store i32 %r142, ptr @cnt, align 4
  %r143 = load i32, ptr @cnt, align 4
  %r144 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r143
  %r145 = load i32, ptr %r127, align 4
  store i32 %r145, ptr %r144, align 4
  %r146 = load i32, ptr @cnt, align 4
  %r147 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r146
  %r148 = load i32, ptr %r129, align 4
  %r149 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r148
  %r150 = load i32, ptr %r149, align 4
  store i32 %r150, ptr %r147, align 4
  %r151 = load i32, ptr %r129, align 4
  %r152 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r151
  %r153 = load i32, ptr @cnt, align 4
  store i32 %r153, ptr %r152, align 4
  %r154 = load i32, ptr @cnt, align 4
  %r155 = add i32 %r154, 1
  store i32 %r155, ptr @cnt, align 4
  ret void
}

define void @init() {
init:
  %r156 = alloca i32, align 4
  store i32 0, ptr %r156, align 4
  br label %bb15

bb15:                                             ; preds = %bb16, %init
  %r157 = load i32, ptr %r156, align 4
  %r158 = icmp slt i32 %r157, 1005
  br i1 %r158, label %bb16, label %bb17

bb16:                                             ; preds = %bb15
  %r159 = load i32, ptr %r156, align 4
  %r160 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r159
  %r161 = sub i32 0, 1
  store i32 %r161, ptr %r160, align 4
  %r162 = load i32, ptr %r156, align 4
  %r163 = add i32 %r162, 1
  store i32 %r163, ptr %r156, align 4
  br label %bb15

bb17:                                             ; preds = %bb15
  ret void
}

define void @clear() {
clear:
  %r164 = alloca i32, align 4
  store i32 1, ptr %r164, align 4
  br label %bb18

bb18:                                             ; preds = %bb19, %clear
  %r165 = load i32, ptr %r164, align 4
  %r166 = load i32, ptr @n, align 4
  %r167 = icmp sle i32 %r165, %r166
  br i1 %r167, label %bb19, label %bb20

bb19:                                             ; preds = %bb18
  %r168 = load i32, ptr %r164, align 4
  %r169 = getelementptr [1005 x i32], ptr @vis, i32 0, i32 %r168
  store i32 0, ptr %r169, align 4
  %r170 = load i32, ptr %r164, align 4
  %r171 = add i32 %r170, 1
  store i32 %r171, ptr %r164, align 4
  br label %bb18

bb20:                                             ; preds = %bb18
  ret void
}

define i32 @same(i32 %r172, i32 %r174) {
same:
  %r188 = alloca i32, align 4
  %r181 = alloca i32, align 4
  %r173 = alloca i32, align 4
  store i32 %r172, ptr %r173, align 4
  %r175 = alloca i32, align 4
  store i32 %r174, ptr %r175, align 4
  %r176 = load i32, ptr %r173, align 4
  %r177 = getelementptr [1005 x i32], ptr @vis, i32 0, i32 %r176
  store i32 1, ptr %r177, align 4
  %r178 = load i32, ptr %r173, align 4
  %r179 = load i32, ptr %r175, align 4
  %r180 = icmp eq i32 %r178, %r179
  br i1 %r180, label %bb21, label %bb22

bb21:                                             ; preds = %same
  ret i32 1

bb42:                                             ; No predecessors!
  br label %bb23

bb22:                                             ; preds = %same
  br label %bb23

bb23:                                             ; preds = %bb22, %bb42
  %r182 = load i32, ptr %r173, align 4
  %r183 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r182
  %r184 = load i32, ptr %r183, align 4
  store i32 %r184, ptr %r181, align 4
  br label %bb24

bb24:                                             ; preds = %bb29, %bb23
  %r185 = load i32, ptr %r181, align 4
  %r186 = sub i32 0, 1
  %r187 = icmp ne i32 %r185, %r186
  br i1 %r187, label %bb25, label %bb26

bb25:                                             ; preds = %bb24
  %r189 = load i32, ptr %r181, align 4
  %r190 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r189
  %r191 = load i32, ptr %r190, align 4
  store i32 %r191, ptr %r188, align 4
  %r192 = load i32, ptr %r188, align 4
  %r193 = getelementptr [1005 x i32], ptr @vis, i32 0, i32 %r192
  %r194 = load i32, ptr %r193, align 4
  %r195 = icmp eq i32 %r194, 0
  br i1 %r195, label %bb30, label %bb28

bb30:                                             ; preds = %bb25
  %r196 = load i32, ptr %r188, align 4
  %r197 = load i32, ptr %r175, align 4
  %r198 = call i32 @same(i32 %r196, i32 %r197)
  %r199 = icmp ne i32 %r198, 0
  br i1 %r199, label %bb27, label %bb28

bb27:                                             ; preds = %bb30
  ret i32 1

bb43:                                             ; No predecessors!
  br label %bb29

bb28:                                             ; preds = %bb30, %bb25
  br label %bb29

bb29:                                             ; preds = %bb28, %bb43
  %r200 = load i32, ptr %r181, align 4
  %r201 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r200
  %r202 = load i32, ptr %r201, align 4
  store i32 %r202, ptr %r181, align 4
  br label %bb24

bb26:                                             ; preds = %bb24
  ret i32 0
}

define i32 @main() {
main:
  %r203 = call i32 @quickread()
  store i32 %r203, ptr @n, align 4
  %r204 = call i32 @quickread()
  store i32 %r204, ptr @m, align 4
  call void @init()
  %r205 = alloca i32, align 4
  store i32 0, ptr %r205, align 4
  %r206 = alloca i32, align 4
  store i32 0, ptr %r206, align 4
  %r207 = alloca i32, align 4
  store i32 0, ptr %r207, align 4
  br label %bb31

bb31:                                             ; preds = %bb40, %main
  %r208 = load i32, ptr @m, align 4
  %r209 = icmp ne i32 %r208, 0
  br i1 %r209, label %bb32, label %bb33

bb32:                                             ; preds = %bb31
  %r210 = call i32 @getch()
  store i32 %r210, ptr %r205, align 4
  br label %bb34

bb34:                                             ; preds = %bb35, %bb32
  %r211 = load i32, ptr %r205, align 4
  %r212 = icmp ne i32 %r211, 81
  br i1 %r212, label %bb37, label %bb36

bb37:                                             ; preds = %bb34
  %r213 = load i32, ptr %r205, align 4
  %r214 = icmp ne i32 %r213, 85
  br i1 %r214, label %bb35, label %bb36

bb35:                                             ; preds = %bb37
  %r215 = call i32 @getch()
  store i32 %r215, ptr %r205, align 4
  br label %bb34

bb36:                                             ; preds = %bb37, %bb34
  %r216 = load i32, ptr %r205, align 4
  %r217 = icmp eq i32 %r216, 81
  br i1 %r217, label %bb38, label %bb39

bb38:                                             ; preds = %bb36
  %r218 = call i32 @quickread()
  store i32 %r218, ptr %r206, align 4
  %r219 = call i32 @quickread()
  store i32 %r219, ptr %r207, align 4
  call void @clear()
  %r220 = load i32, ptr %r206, align 4
  %r221 = load i32, ptr %r207, align 4
  %r222 = call i32 @same(i32 %r220, i32 %r221)
  call void @putint(i32 %r222)
  call void @putch(i32 10)
  br label %bb40

bb39:                                             ; preds = %bb36
  %r223 = call i32 @quickread()
  store i32 %r223, ptr %r206, align 4
  %r224 = call i32 @quickread()
  store i32 %r224, ptr %r207, align 4
  %r225 = load i32, ptr %r206, align 4
  %r226 = load i32, ptr %r207, align 4
  call void @addedge(i32 %r225, i32 %r226)
  br label %bb40

bb40:                                             ; preds = %bb39, %bb38
  %r227 = load i32, ptr @m, align 4
  %r228 = sub i32 %r227, 1
  store i32 %r228, ptr @m, align 4
  br label %bb31

bb33:                                             ; preds = %bb31
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @after_main() #0 {
  %1 = load i32, ptr @_sysy_idx, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 1
  br i1 %2, label %15, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @_sysy_h, align 4, !tbaa !6
  %5 = load i32, ptr @_sysy_m, align 4, !tbaa !6
  %6 = load i32, ptr @_sysy_s, align 4, !tbaa !6
  %7 = load i32, ptr @_sysy_us, align 4, !tbaa !6
  br label %8

8:                                                ; preds = %15, %3
  %9 = phi i32 [ %7, %3 ], [ %37, %15 ]
  %10 = phi i32 [ %6, %3 ], [ %41, %15 ]
  %11 = phi i32 [ %5, %3 ], [ %45, %15 ]
  %12 = phi i32 [ %4, %3 ], [ %44, %15 ]
  %13 = load ptr, ptr @stderr, align 8, !tbaa !10
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef %12, i32 noundef %11, i32 noundef %10, i32 noundef %9) #6
  ret void

15:                                               ; preds = %15, %0
  %16 = phi i64 [ %46, %15 ], [ 1, %0 ]
  %17 = load ptr, ptr @stderr, align 8, !tbaa !10
  %18 = getelementptr inbounds [1024 x i32], ptr @_sysy_l1, i64 0, i64 %16
  %19 = load i32, ptr %18, align 4, !tbaa !6
  %20 = getelementptr inbounds [1024 x i32], ptr @_sysy_l2, i64 0, i64 %16
  %21 = load i32, ptr %20, align 4, !tbaa !6
  %22 = getelementptr inbounds [1024 x i32], ptr @_sysy_h, i64 0, i64 %16
  %23 = load i32, ptr %22, align 4, !tbaa !6
  %24 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %16
  %25 = load i32, ptr %24, align 4, !tbaa !6
  %26 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %16
  %27 = load i32, ptr %26, align 4, !tbaa !6
  %28 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %16
  %29 = load i32, ptr %28, align 4, !tbaa !6
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.5, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #6
  %31 = load i32, ptr %28, align 4, !tbaa !6
  %32 = load i32, ptr @_sysy_us, align 4, !tbaa !6
  %33 = add nsw i32 %32, %31
  %34 = load i32, ptr %26, align 4, !tbaa !6
  %35 = load i32, ptr @_sysy_s, align 4, !tbaa !6
  %36 = add nsw i32 %35, %34
  %37 = srem i32 %33, 1000000
  store i32 %37, ptr @_sysy_us, align 4, !tbaa !6
  %38 = load i32, ptr %24, align 4, !tbaa !6
  %39 = load i32, ptr @_sysy_m, align 4, !tbaa !6
  %40 = add nsw i32 %39, %38
  %41 = srem i32 %36, 60
  store i32 %41, ptr @_sysy_s, align 4, !tbaa !6
  %42 = load i32, ptr %22, align 4, !tbaa !6
  %43 = load i32, ptr @_sysy_h, align 4, !tbaa !6
  %44 = add nsw i32 %43, %42
  store i32 %44, ptr @_sysy_h, align 4, !tbaa !6
  %45 = srem i32 %40, 60
  store i32 %45, ptr @_sysy_m, align 4, !tbaa !6
  %46 = add nuw nsw i64 %16, 1
  %47 = load i32, ptr @_sysy_idx, align 4, !tbaa !6
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %15, label %8, !llvm.loop !12
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @getint() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #7
  %2 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %1)
  %3 = load i32, ptr %1, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #7
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_scanf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @getch() #0 {
  %1 = alloca i8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #7
  %2 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %1)
  %3 = load i8, ptr %1, align 4, !tbaa !14
  %4 = zext i8 %3 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #7
  ret i32 %4
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @putint(i32 noundef %0) #0 {
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @putch(i32 noundef %0) #0 {
  %2 = tail call i32 @putchar(i32 %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @putarray(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %0)
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = zext nneg i32 %0 to i64
  br label %9

7:                                                ; preds = %9, %2
  %8 = tail call i32 @putchar(i32 10)
  ret void

9:                                                ; preds = %9, %5
  %10 = phi i64 [ 0, %5 ], [ %14, %9 ]
  %11 = getelementptr inbounds i32, ptr %1, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !6
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %12)
  %14 = add nuw nsw i64 %10, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %7, label %9, !llvm.loop !15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @before_main() local_unnamed_addr #4 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) @_sysy_us, i8 0, i64 4096, i1 false), !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) @_sysy_s, i8 0, i64 4096, i1 false), !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) @_sysy_m, i8 0, i64 4096, i1 false), !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) @_sysy_h, i8 0, i64 4096, i1 false), !tbaa !6
  store i32 1, ptr @_sysy_idx, align 4, !tbaa !6
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind uwtable
define dso_local void @_sysy_starttime(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @_sysy_idx, align 4, !tbaa !6
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [1024 x i32], ptr @_sysy_l1, i64 0, i64 %3
  store i32 %0, ptr %4, align 4, !tbaa !6
  %5 = tail call i32 @gettimeofday(ptr noundef nonnull @_sysy_start, ptr noundef null) #7
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @_sysy_stoptime(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @gettimeofday(ptr noundef nonnull @_sysy_end, ptr noundef null) #7
  %3 = load i32, ptr @_sysy_idx, align 4, !tbaa !6
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [1024 x i32], ptr @_sysy_l2, i64 0, i64 %4
  store i32 %0, ptr %5, align 4, !tbaa !6
  %6 = load i64, ptr @_sysy_end, align 8, !tbaa !16
  %7 = load i64, ptr @_sysy_start, align 8, !tbaa !16
  %8 = sub nsw i64 %6, %7
  %9 = mul nsw i64 %8, 1000000
  %10 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @_sysy_end, i64 0, i32 1), align 8, !tbaa !19
  %11 = add nsw i64 %9, %10
  %12 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @_sysy_start, i64 0, i32 1), align 8, !tbaa !19
  %13 = sub i64 %11, %12
  %14 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %4
  %15 = load i32, ptr %14, align 4, !tbaa !6
  %16 = trunc i64 %13 to i32
  %17 = add i32 %15, %16
  %18 = freeze i32 %17
  %19 = sdiv i32 %18, 1000000
  %20 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %4
  %21 = load i32, ptr %20, align 4, !tbaa !6
  %22 = add nsw i32 %19, %21
  %23 = mul i32 %19, 1000000
  %24 = sub i32 %18, %23
  store i32 %24, ptr %14, align 4, !tbaa !6
  %25 = freeze i32 %22
  %26 = sdiv i32 %25, 60
  %27 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %4
  %28 = load i32, ptr %27, align 4, !tbaa !6
  %29 = add nsw i32 %26, %28
  %30 = mul i32 %26, 60
  %31 = sub i32 %25, %30
  store i32 %31, ptr %20, align 4, !tbaa !6
  %32 = freeze i32 %29
  %33 = sdiv i32 %32, 60
  %34 = getelementptr inbounds [1024 x i32], ptr @_sysy_h, i64 0, i64 %4
  %35 = load i32, ptr %34, align 4, !tbaa !6
  %36 = add nsw i32 %35, %33
  store i32 %36, ptr %34, align 4, !tbaa !6
  %37 = mul i32 %33, 60
  %38 = sub i32 %32, %37
  store i32 %38, ptr %27, align 4, !tbaa !6
  %39 = add nsw i32 %3, 1
  store i32 %39, ptr @_sysy_idx, align 4, !tbaa !6
  ret void
}

attributes #0 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold }
attributes #7 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!8, !8, i64 0}
!15 = distinct !{!15, !13}
!16 = !{!17, !18, i64 0}
!17 = !{!"timeval", !18, i64 0, !18, i64 8}
!18 = !{!"long", !8, i64 0}
!19 = !{!17, !18, i64 8}
