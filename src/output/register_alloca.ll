; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@a1 = global i32 1
@a2 = global i32 2
@a3 = global i32 3
@a4 = global i32 4
@a5 = global i32 5
@a6 = global i32 6
@a7 = global i32 7
@a8 = global i32 8
@a9 = global i32 9
@a10 = global i32 10
@a11 = global i32 11
@a12 = global i32 12
@a13 = global i32 13
@a14 = global i32 14
@a15 = global i32 15
@a16 = global i32 16
@a17 = global i32 1
@a18 = global i32 2
@a19 = global i32 3
@a20 = global i32 4
@a21 = global i32 5
@a22 = global i32 6
@a23 = global i32 7
@a24 = global i32 8
@a25 = global i32 9
@a26 = global i32 10
@a27 = global i32 11
@a28 = global i32 12
@a29 = global i32 13
@a30 = global i32 14
@a31 = global i32 15
@a32 = global i32 16
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

define i32 @func(i32 %r100, i32 %r102) {
func:
  %r101 = alloca i32, align 4
  store i32 %r100, ptr %r101, align 4
  %r103 = alloca i32, align 4
  store i32 %r102, ptr %r103, align 4
  %r104 = alloca i32, align 4
  %r105 = load i32, ptr %r101, align 4
  %r106 = load i32, ptr %r103, align 4
  %r107 = add i32 %r105, %r106
  store i32 %r107, ptr %r104, align 4
  %r108 = alloca i32, align 4
  %r109 = alloca i32, align 4
  %r110 = alloca i32, align 4
  %r111 = alloca i32, align 4
  %r112 = alloca i32, align 4
  %r113 = alloca i32, align 4
  %r114 = alloca i32, align 4
  %r115 = alloca i32, align 4
  %r116 = alloca i32, align 4
  %r117 = alloca i32, align 4
  %r118 = alloca i32, align 4
  %r119 = alloca i32, align 4
  %r120 = alloca i32, align 4
  %r121 = alloca i32, align 4
  %r122 = alloca i32, align 4
  %r123 = alloca i32, align 4
  %r124 = alloca i32, align 4
  %r125 = alloca i32, align 4
  %r126 = alloca i32, align 4
  %r127 = alloca i32, align 4
  %r128 = alloca i32, align 4
  %r129 = alloca i32, align 4
  %r130 = alloca i32, align 4
  %r131 = alloca i32, align 4
  %r132 = alloca i32, align 4
  %r133 = alloca i32, align 4
  %r134 = alloca i32, align 4
  %r135 = alloca i32, align 4
  %r136 = alloca i32, align 4
  %r137 = alloca i32, align 4
  %r138 = alloca i32, align 4
  %r139 = alloca i32, align 4
  %r140 = alloca i32, align 4
  %r141 = alloca i32, align 4
  %r142 = alloca i32, align 4
  %r143 = alloca i32, align 4
  %r144 = call i32 @getint()
  store i32 %r144, ptr %r108, align 4
  %r145 = call i32 @getint()
  store i32 %r145, ptr %r109, align 4
  %r146 = call i32 @getint()
  store i32 %r146, ptr %r110, align 4
  %r147 = call i32 @getint()
  store i32 %r147, ptr %r111, align 4
  %r148 = load i32, ptr %r108, align 4
  %r149 = add i32 1, %r148
  %r150 = load i32, ptr @a1, align 4
  %r151 = add i32 %r149, %r150
  store i32 %r151, ptr %r112, align 4
  %r152 = load i32, ptr %r109, align 4
  %r153 = add i32 2, %r152
  %r154 = load i32, ptr @a2, align 4
  %r155 = add i32 %r153, %r154
  store i32 %r155, ptr %r113, align 4
  %r156 = load i32, ptr %r110, align 4
  %r157 = add i32 3, %r156
  %r158 = load i32, ptr @a3, align 4
  %r159 = add i32 %r157, %r158
  store i32 %r159, ptr %r114, align 4
  %r160 = load i32, ptr %r111, align 4
  %r161 = add i32 4, %r160
  %r162 = load i32, ptr @a4, align 4
  %r163 = add i32 %r161, %r162
  store i32 %r163, ptr %r115, align 4
  %r164 = load i32, ptr %r112, align 4
  %r165 = add i32 1, %r164
  %r166 = load i32, ptr @a5, align 4
  %r167 = add i32 %r165, %r166
  store i32 %r167, ptr %r116, align 4
  %r168 = load i32, ptr %r113, align 4
  %r169 = add i32 2, %r168
  %r170 = load i32, ptr @a6, align 4
  %r171 = add i32 %r169, %r170
  store i32 %r171, ptr %r117, align 4
  %r172 = load i32, ptr %r114, align 4
  %r173 = add i32 3, %r172
  %r174 = load i32, ptr @a7, align 4
  %r175 = add i32 %r173, %r174
  store i32 %r175, ptr %r118, align 4
  %r176 = load i32, ptr %r115, align 4
  %r177 = add i32 4, %r176
  %r178 = load i32, ptr @a8, align 4
  %r179 = add i32 %r177, %r178
  store i32 %r179, ptr %r119, align 4
  %r180 = load i32, ptr %r116, align 4
  %r181 = add i32 1, %r180
  %r182 = load i32, ptr @a9, align 4
  %r183 = add i32 %r181, %r182
  store i32 %r183, ptr %r120, align 4
  %r184 = load i32, ptr %r117, align 4
  %r185 = add i32 2, %r184
  %r186 = load i32, ptr @a10, align 4
  %r187 = add i32 %r185, %r186
  store i32 %r187, ptr %r121, align 4
  %r188 = load i32, ptr %r118, align 4
  %r189 = add i32 3, %r188
  %r190 = load i32, ptr @a11, align 4
  %r191 = add i32 %r189, %r190
  store i32 %r191, ptr %r122, align 4
  %r192 = load i32, ptr %r119, align 4
  %r193 = add i32 4, %r192
  %r194 = load i32, ptr @a12, align 4
  %r195 = add i32 %r193, %r194
  store i32 %r195, ptr %r123, align 4
  %r196 = load i32, ptr %r120, align 4
  %r197 = add i32 1, %r196
  %r198 = load i32, ptr @a13, align 4
  %r199 = add i32 %r197, %r198
  store i32 %r199, ptr %r124, align 4
  %r200 = load i32, ptr %r121, align 4
  %r201 = add i32 2, %r200
  %r202 = load i32, ptr @a14, align 4
  %r203 = add i32 %r201, %r202
  store i32 %r203, ptr %r125, align 4
  %r204 = load i32, ptr %r122, align 4
  %r205 = add i32 3, %r204
  %r206 = load i32, ptr @a15, align 4
  %r207 = add i32 %r205, %r206
  store i32 %r207, ptr %r126, align 4
  %r208 = load i32, ptr %r123, align 4
  %r209 = add i32 4, %r208
  %r210 = load i32, ptr @a16, align 4
  %r211 = add i32 %r209, %r210
  store i32 %r211, ptr %r127, align 4
  %r212 = load i32, ptr %r124, align 4
  %r213 = add i32 1, %r212
  %r214 = load i32, ptr @a17, align 4
  %r215 = add i32 %r213, %r214
  store i32 %r215, ptr %r128, align 4
  %r216 = load i32, ptr %r125, align 4
  %r217 = add i32 2, %r216
  %r218 = load i32, ptr @a18, align 4
  %r219 = add i32 %r217, %r218
  store i32 %r219, ptr %r129, align 4
  %r220 = load i32, ptr %r126, align 4
  %r221 = add i32 3, %r220
  %r222 = load i32, ptr @a19, align 4
  %r223 = add i32 %r221, %r222
  store i32 %r223, ptr %r130, align 4
  %r224 = load i32, ptr %r127, align 4
  %r225 = add i32 4, %r224
  %r226 = load i32, ptr @a20, align 4
  %r227 = add i32 %r225, %r226
  store i32 %r227, ptr %r131, align 4
  %r228 = load i32, ptr %r128, align 4
  %r229 = add i32 1, %r228
  %r230 = load i32, ptr @a21, align 4
  %r231 = add i32 %r229, %r230
  store i32 %r231, ptr %r132, align 4
  %r232 = load i32, ptr %r129, align 4
  %r233 = add i32 2, %r232
  %r234 = load i32, ptr @a22, align 4
  %r235 = add i32 %r233, %r234
  store i32 %r235, ptr %r133, align 4
  %r236 = load i32, ptr %r130, align 4
  %r237 = add i32 3, %r236
  %r238 = load i32, ptr @a23, align 4
  %r239 = add i32 %r237, %r238
  store i32 %r239, ptr %r134, align 4
  %r240 = load i32, ptr %r131, align 4
  %r241 = add i32 4, %r240
  %r242 = load i32, ptr @a24, align 4
  %r243 = add i32 %r241, %r242
  store i32 %r243, ptr %r135, align 4
  %r244 = load i32, ptr %r132, align 4
  %r245 = add i32 1, %r244
  %r246 = load i32, ptr @a25, align 4
  %r247 = add i32 %r245, %r246
  store i32 %r247, ptr %r136, align 4
  %r248 = load i32, ptr %r133, align 4
  %r249 = add i32 2, %r248
  %r250 = load i32, ptr @a26, align 4
  %r251 = add i32 %r249, %r250
  store i32 %r251, ptr %r137, align 4
  %r252 = load i32, ptr %r134, align 4
  %r253 = add i32 3, %r252
  %r254 = load i32, ptr @a27, align 4
  %r255 = add i32 %r253, %r254
  store i32 %r255, ptr %r138, align 4
  %r256 = load i32, ptr %r135, align 4
  %r257 = add i32 4, %r256
  %r258 = load i32, ptr @a28, align 4
  %r259 = add i32 %r257, %r258
  store i32 %r259, ptr %r139, align 4
  %r260 = load i32, ptr %r136, align 4
  %r261 = add i32 1, %r260
  %r262 = load i32, ptr @a29, align 4
  %r263 = add i32 %r261, %r262
  store i32 %r263, ptr %r140, align 4
  %r264 = load i32, ptr %r137, align 4
  %r265 = add i32 2, %r264
  %r266 = load i32, ptr @a30, align 4
  %r267 = add i32 %r265, %r266
  store i32 %r267, ptr %r141, align 4
  %r268 = load i32, ptr %r138, align 4
  %r269 = add i32 3, %r268
  %r270 = load i32, ptr @a31, align 4
  %r271 = add i32 %r269, %r270
  store i32 %r271, ptr %r142, align 4
  %r272 = load i32, ptr %r139, align 4
  %r273 = add i32 4, %r272
  %r274 = load i32, ptr @a32, align 4
  %r275 = add i32 %r273, %r274
  store i32 %r275, ptr %r143, align 4
  %r276 = load i32, ptr %r101, align 4
  %r277 = load i32, ptr %r103, align 4
  %r278 = sub i32 %r276, %r277
  %r279 = add i32 %r278, 10
  store i32 %r279, ptr %r104, align 4
  %r280 = load i32, ptr %r136, align 4
  %r281 = add i32 1, %r280
  %r282 = load i32, ptr @a29, align 4
  %r283 = add i32 %r281, %r282
  store i32 %r283, ptr %r140, align 4
  %r284 = load i32, ptr %r137, align 4
  %r285 = add i32 2, %r284
  %r286 = load i32, ptr @a30, align 4
  %r287 = add i32 %r285, %r286
  store i32 %r287, ptr %r141, align 4
  %r288 = load i32, ptr %r138, align 4
  %r289 = add i32 3, %r288
  %r290 = load i32, ptr @a31, align 4
  %r291 = add i32 %r289, %r290
  store i32 %r291, ptr %r142, align 4
  %r292 = load i32, ptr %r139, align 4
  %r293 = add i32 4, %r292
  %r294 = load i32, ptr @a32, align 4
  %r295 = add i32 %r293, %r294
  store i32 %r295, ptr %r143, align 4
  %r296 = load i32, ptr %r132, align 4
  %r297 = add i32 1, %r296
  %r298 = load i32, ptr @a25, align 4
  %r299 = add i32 %r297, %r298
  store i32 %r299, ptr %r136, align 4
  %r300 = load i32, ptr %r133, align 4
  %r301 = add i32 2, %r300
  %r302 = load i32, ptr @a26, align 4
  %r303 = add i32 %r301, %r302
  store i32 %r303, ptr %r137, align 4
  %r304 = load i32, ptr %r134, align 4
  %r305 = add i32 3, %r304
  %r306 = load i32, ptr @a27, align 4
  %r307 = add i32 %r305, %r306
  store i32 %r307, ptr %r138, align 4
  %r308 = load i32, ptr %r135, align 4
  %r309 = add i32 4, %r308
  %r310 = load i32, ptr @a28, align 4
  %r311 = add i32 %r309, %r310
  store i32 %r311, ptr %r139, align 4
  %r312 = load i32, ptr %r128, align 4
  %r313 = add i32 1, %r312
  %r314 = load i32, ptr @a21, align 4
  %r315 = add i32 %r313, %r314
  store i32 %r315, ptr %r132, align 4
  %r316 = load i32, ptr %r129, align 4
  %r317 = add i32 2, %r316
  %r318 = load i32, ptr @a22, align 4
  %r319 = add i32 %r317, %r318
  store i32 %r319, ptr %r133, align 4
  %r320 = load i32, ptr %r130, align 4
  %r321 = add i32 3, %r320
  %r322 = load i32, ptr @a23, align 4
  %r323 = add i32 %r321, %r322
  store i32 %r323, ptr %r134, align 4
  %r324 = load i32, ptr %r131, align 4
  %r325 = add i32 4, %r324
  %r326 = load i32, ptr @a24, align 4
  %r327 = add i32 %r325, %r326
  store i32 %r327, ptr %r135, align 4
  %r328 = load i32, ptr %r124, align 4
  %r329 = add i32 1, %r328
  %r330 = load i32, ptr @a17, align 4
  %r331 = add i32 %r329, %r330
  store i32 %r331, ptr %r128, align 4
  %r332 = load i32, ptr %r125, align 4
  %r333 = add i32 2, %r332
  %r334 = load i32, ptr @a18, align 4
  %r335 = add i32 %r333, %r334
  store i32 %r335, ptr %r129, align 4
  %r336 = load i32, ptr %r126, align 4
  %r337 = add i32 3, %r336
  %r338 = load i32, ptr @a19, align 4
  %r339 = add i32 %r337, %r338
  store i32 %r339, ptr %r130, align 4
  %r340 = load i32, ptr %r127, align 4
  %r341 = add i32 4, %r340
  %r342 = load i32, ptr @a20, align 4
  %r343 = add i32 %r341, %r342
  store i32 %r343, ptr %r131, align 4
  %r344 = load i32, ptr %r120, align 4
  %r345 = add i32 1, %r344
  %r346 = load i32, ptr @a13, align 4
  %r347 = add i32 %r345, %r346
  store i32 %r347, ptr %r124, align 4
  %r348 = load i32, ptr %r121, align 4
  %r349 = add i32 2, %r348
  %r350 = load i32, ptr @a14, align 4
  %r351 = add i32 %r349, %r350
  store i32 %r351, ptr %r125, align 4
  %r352 = load i32, ptr %r122, align 4
  %r353 = add i32 3, %r352
  %r354 = load i32, ptr @a15, align 4
  %r355 = add i32 %r353, %r354
  store i32 %r355, ptr %r126, align 4
  %r356 = load i32, ptr %r123, align 4
  %r357 = add i32 4, %r356
  %r358 = load i32, ptr @a16, align 4
  %r359 = add i32 %r357, %r358
  store i32 %r359, ptr %r127, align 4
  %r360 = load i32, ptr %r116, align 4
  %r361 = add i32 1, %r360
  %r362 = load i32, ptr @a9, align 4
  %r363 = add i32 %r361, %r362
  store i32 %r363, ptr %r120, align 4
  %r364 = load i32, ptr %r117, align 4
  %r365 = add i32 2, %r364
  %r366 = load i32, ptr @a10, align 4
  %r367 = add i32 %r365, %r366
  store i32 %r367, ptr %r121, align 4
  %r368 = load i32, ptr %r118, align 4
  %r369 = add i32 3, %r368
  %r370 = load i32, ptr @a11, align 4
  %r371 = add i32 %r369, %r370
  store i32 %r371, ptr %r122, align 4
  %r372 = load i32, ptr %r119, align 4
  %r373 = add i32 4, %r372
  %r374 = load i32, ptr @a12, align 4
  %r375 = add i32 %r373, %r374
  store i32 %r375, ptr %r123, align 4
  %r376 = load i32, ptr %r112, align 4
  %r377 = add i32 1, %r376
  %r378 = load i32, ptr @a5, align 4
  %r379 = add i32 %r377, %r378
  store i32 %r379, ptr %r116, align 4
  %r380 = load i32, ptr %r113, align 4
  %r381 = add i32 2, %r380
  %r382 = load i32, ptr @a6, align 4
  %r383 = add i32 %r381, %r382
  store i32 %r383, ptr %r117, align 4
  %r384 = load i32, ptr %r114, align 4
  %r385 = add i32 3, %r384
  %r386 = load i32, ptr @a7, align 4
  %r387 = add i32 %r385, %r386
  store i32 %r387, ptr %r118, align 4
  %r388 = load i32, ptr %r115, align 4
  %r389 = add i32 4, %r388
  %r390 = load i32, ptr @a8, align 4
  %r391 = add i32 %r389, %r390
  store i32 %r391, ptr %r119, align 4
  %r392 = load i32, ptr %r108, align 4
  %r393 = add i32 1, %r392
  %r394 = load i32, ptr @a1, align 4
  %r395 = add i32 %r393, %r394
  store i32 %r395, ptr %r112, align 4
  %r396 = load i32, ptr %r109, align 4
  %r397 = add i32 2, %r396
  %r398 = load i32, ptr @a2, align 4
  %r399 = add i32 %r397, %r398
  store i32 %r399, ptr %r113, align 4
  %r400 = load i32, ptr %r110, align 4
  %r401 = add i32 3, %r400
  %r402 = load i32, ptr @a3, align 4
  %r403 = add i32 %r401, %r402
  store i32 %r403, ptr %r114, align 4
  %r404 = load i32, ptr %r111, align 4
  %r405 = add i32 4, %r404
  %r406 = load i32, ptr @a4, align 4
  %r407 = add i32 %r405, %r406
  store i32 %r407, ptr %r115, align 4
  %r408 = load i32, ptr %r108, align 4
  %r409 = add i32 1, %r408
  %r410 = load i32, ptr @a1, align 4
  %r411 = add i32 %r409, %r410
  store i32 %r411, ptr %r112, align 4
  %r412 = load i32, ptr %r109, align 4
  %r413 = add i32 2, %r412
  %r414 = load i32, ptr @a2, align 4
  %r415 = add i32 %r413, %r414
  store i32 %r415, ptr %r113, align 4
  %r416 = load i32, ptr %r110, align 4
  %r417 = add i32 3, %r416
  %r418 = load i32, ptr @a3, align 4
  %r419 = add i32 %r417, %r418
  store i32 %r419, ptr %r114, align 4
  %r420 = load i32, ptr %r111, align 4
  %r421 = add i32 4, %r420
  %r422 = load i32, ptr @a4, align 4
  %r423 = add i32 %r421, %r422
  store i32 %r423, ptr %r115, align 4
  %r424 = load i32, ptr %r104, align 4
  %r425 = load i32, ptr %r108, align 4
  %r426 = add i32 %r424, %r425
  %r427 = load i32, ptr %r109, align 4
  %r428 = add i32 %r426, %r427
  %r429 = load i32, ptr %r110, align 4
  %r430 = add i32 %r428, %r429
  %r431 = load i32, ptr %r111, align 4
  %r432 = add i32 %r430, %r431
  %r433 = load i32, ptr %r112, align 4
  %r434 = sub i32 %r432, %r433
  %r435 = load i32, ptr %r113, align 4
  %r436 = sub i32 %r434, %r435
  %r437 = load i32, ptr %r114, align 4
  %r438 = sub i32 %r436, %r437
  %r439 = load i32, ptr %r115, align 4
  %r440 = sub i32 %r438, %r439
  %r441 = load i32, ptr %r116, align 4
  %r442 = add i32 %r440, %r441
  %r443 = load i32, ptr %r117, align 4
  %r444 = add i32 %r442, %r443
  %r445 = load i32, ptr %r118, align 4
  %r446 = add i32 %r444, %r445
  %r447 = load i32, ptr %r119, align 4
  %r448 = add i32 %r446, %r447
  %r449 = load i32, ptr %r120, align 4
  %r450 = sub i32 %r448, %r449
  %r451 = load i32, ptr %r121, align 4
  %r452 = sub i32 %r450, %r451
  %r453 = load i32, ptr %r122, align 4
  %r454 = sub i32 %r452, %r453
  %r455 = load i32, ptr %r123, align 4
  %r456 = sub i32 %r454, %r455
  %r457 = load i32, ptr %r124, align 4
  %r458 = add i32 %r456, %r457
  %r459 = load i32, ptr %r125, align 4
  %r460 = add i32 %r458, %r459
  %r461 = load i32, ptr %r126, align 4
  %r462 = add i32 %r460, %r461
  %r463 = load i32, ptr %r127, align 4
  %r464 = add i32 %r462, %r463
  %r465 = load i32, ptr %r128, align 4
  %r466 = sub i32 %r464, %r465
  %r467 = load i32, ptr %r129, align 4
  %r468 = sub i32 %r466, %r467
  %r469 = load i32, ptr %r130, align 4
  %r470 = sub i32 %r468, %r469
  %r471 = load i32, ptr %r131, align 4
  %r472 = sub i32 %r470, %r471
  %r473 = load i32, ptr %r132, align 4
  %r474 = add i32 %r472, %r473
  %r475 = load i32, ptr %r133, align 4
  %r476 = add i32 %r474, %r475
  %r477 = load i32, ptr %r134, align 4
  %r478 = add i32 %r476, %r477
  %r479 = load i32, ptr %r135, align 4
  %r480 = add i32 %r478, %r479
  %r481 = load i32, ptr %r136, align 4
  %r482 = sub i32 %r480, %r481
  %r483 = load i32, ptr %r137, align 4
  %r484 = sub i32 %r482, %r483
  %r485 = load i32, ptr %r138, align 4
  %r486 = sub i32 %r484, %r485
  %r487 = load i32, ptr %r139, align 4
  %r488 = sub i32 %r486, %r487
  %r489 = load i32, ptr %r140, align 4
  %r490 = add i32 %r488, %r489
  %r491 = load i32, ptr %r141, align 4
  %r492 = add i32 %r490, %r491
  %r493 = load i32, ptr %r142, align 4
  %r494 = add i32 %r492, %r493
  %r495 = load i32, ptr %r143, align 4
  %r496 = add i32 %r494, %r495
  %r497 = load i32, ptr @a1, align 4
  %r498 = add i32 %r496, %r497
  %r499 = load i32, ptr @a2, align 4
  %r500 = sub i32 %r498, %r499
  %r501 = load i32, ptr @a3, align 4
  %r502 = add i32 %r500, %r501
  %r503 = load i32, ptr @a4, align 4
  %r504 = sub i32 %r502, %r503
  %r505 = load i32, ptr @a5, align 4
  %r506 = add i32 %r504, %r505
  %r507 = load i32, ptr @a6, align 4
  %r508 = sub i32 %r506, %r507
  %r509 = load i32, ptr @a7, align 4
  %r510 = add i32 %r508, %r509
  %r511 = load i32, ptr @a8, align 4
  %r512 = sub i32 %r510, %r511
  %r513 = load i32, ptr @a9, align 4
  %r514 = add i32 %r512, %r513
  %r515 = load i32, ptr @a10, align 4
  %r516 = sub i32 %r514, %r515
  %r517 = load i32, ptr @a11, align 4
  %r518 = add i32 %r516, %r517
  %r519 = load i32, ptr @a12, align 4
  %r520 = sub i32 %r518, %r519
  %r521 = load i32, ptr @a13, align 4
  %r522 = add i32 %r520, %r521
  %r523 = load i32, ptr @a14, align 4
  %r524 = sub i32 %r522, %r523
  %r525 = load i32, ptr @a15, align 4
  %r526 = add i32 %r524, %r525
  %r527 = load i32, ptr @a16, align 4
  %r528 = sub i32 %r526, %r527
  %r529 = load i32, ptr @a17, align 4
  %r530 = add i32 %r528, %r529
  %r531 = load i32, ptr @a18, align 4
  %r532 = sub i32 %r530, %r531
  %r533 = load i32, ptr @a19, align 4
  %r534 = add i32 %r532, %r533
  %r535 = load i32, ptr @a20, align 4
  %r536 = sub i32 %r534, %r535
  %r537 = load i32, ptr @a21, align 4
  %r538 = add i32 %r536, %r537
  %r539 = load i32, ptr @a22, align 4
  %r540 = sub i32 %r538, %r539
  %r541 = load i32, ptr @a23, align 4
  %r542 = add i32 %r540, %r541
  %r543 = load i32, ptr @a24, align 4
  %r544 = sub i32 %r542, %r543
  %r545 = load i32, ptr @a25, align 4
  %r546 = add i32 %r544, %r545
  %r547 = load i32, ptr @a26, align 4
  %r548 = sub i32 %r546, %r547
  %r549 = load i32, ptr @a27, align 4
  %r550 = add i32 %r548, %r549
  %r551 = load i32, ptr @a28, align 4
  %r552 = sub i32 %r550, %r551
  %r553 = load i32, ptr @a29, align 4
  %r554 = add i32 %r552, %r553
  %r555 = load i32, ptr @a30, align 4
  %r556 = sub i32 %r554, %r555
  %r557 = load i32, ptr @a31, align 4
  %r558 = add i32 %r556, %r557
  %r559 = load i32, ptr @a32, align 4
  %r560 = sub i32 %r558, %r559
  ret i32 %r560
}

define i32 @main() {
main:
  %r561 = alloca i32, align 4
  %r562 = alloca i32, align 4
  %r563 = call i32 @getint()
  store i32 %r563, ptr %r561, align 4
  %r564 = load i32, ptr %r561, align 4
  %r565 = mul i32 2, 9
  %r566 = add i32 %r564, %r565
  store i32 %r566, ptr %r562, align 4
  %r567 = load i32, ptr %r561, align 4
  %r568 = load i32, ptr %r562, align 4
  %r569 = call i32 @func(i32 %r567, i32 %r568)
  store i32 %r569, ptr %r561, align 4
  %r570 = load i32, ptr %r561, align 4
  call void @putint(i32 %r570)
  %r571 = load i32, ptr %r561, align 4
  ret i32 %r571
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
define dso_local i32 @getint() #0 {
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
define dso_local i32 @getch() local_unnamed_addr #0 {
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
define dso_local void @putch(i32 noundef %0) local_unnamed_addr #0 {
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
