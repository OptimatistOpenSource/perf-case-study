; ModuleID = 'perf_case.2ebae707e9e255d2-cgu.0'
source_filename = "perf_case.2ebae707e9e255d2-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__rust_no_alloc_shim_is_unstable = external global i8
@alloc_a15033f644a617b97dffd8b50344a222 = private unnamed_addr constant [33 x i8] c"crates/perf-case/src/black_box.rs", align 1
@alloc_148d1cb1015daa4bbbb4403656f06f19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a15033f644a617b97dffd8b50344a222, [16 x i8] c"!\00\00\00\00\00\00\00\09\00\00\00\0B\00\00\00" }>, align 8
@alloc_3d17f1da9e467dff42628079304e272a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a15033f644a617b97dffd8b50344a222, [16 x i8] c"!\00\00\00\00\00\00\00\0F\00\00\00\11\00\00\00" }>, align 8
@alloc_171de55d3d26e296bf5a0676ecc89506 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a15033f644a617b97dffd8b50344a222, [16 x i8] c"!\00\00\00\00\00\00\00\22\00\00\00\11\00\00\00" }>, align 8
@alloc_393f5d963e067074b93f091948322352 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a15033f644a617b97dffd8b50344a222, [16 x i8] c"!\00\00\00\00\00\00\00+\00\00\00&\00\00\00" }>, align 8

@_ZN9perf_case9zero_init8ZeroInit6assign17h7669558c341badddE = unnamed_addr alias void (ptr, ptr), ptr @_ZN9perf_case9zero_init8ZeroInit10assign_3rd17hccebfaeeea8f7c31E
@_ZN9perf_case9zero_init9uninit_it17h550f1e90574c123cE = unnamed_addr alias void (ptr, ptr), ptr @_ZN9perf_case9zero_init7init_it17ha9b7a4753f452243E

; perf_case::chain::many_chain
; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define noundef i64 @_ZN9perf_case5chain10many_chain17hba1e7798f4d6f899E(ptr noalias nocapture noundef align 8 dereferenceable(524288) %arg) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !2148 {
start:
  %self1.i = alloca [524304 x i8], align 8
  %_8 = alloca [524288 x i8], align 8
    #dbg_declare(ptr %arg, !2150, !DIExpression(), !2151)
    #dbg_declare(ptr %arg, !1585, !DIExpression(), !2152)
    #dbg_value(ptr %arg, !1587, !DIExpression(), !2154)
    #dbg_value(ptr undef, !1596, !DIExpression(), !2156)
    #dbg_value(ptr undef, !1609, !DIExpression(), !2156)
    #dbg_value(ptr undef, !1644, !DIExpression(), !2160)
    #dbg_value(ptr %arg, !1663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2161)
    #dbg_value(i64 65536, !1663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2161)
    #dbg_value(i64 1, !1670, !DIExpression(), !2162)
    #dbg_value(ptr %arg, !1664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2164)
    #dbg_value(ptr %arg, !1664, !DIExpression(DW_OP_plus_uconst, 524288, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2164)
    #dbg_value(!DIArgList(ptr %arg, i64 0), !1664, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !2164)
    #dbg_value(!DIArgList(ptr %arg, i64 0), !1645, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2165)
    #dbg_value(!DIArgList(ptr %arg, i64 0), !1676, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2162)
    #dbg_value(ptr %arg, !1646, !DIExpression(DW_OP_plus_uconst, 524288, DW_OP_stack_value), !2166)
  br label %vector.body, !dbg !2167

vector.body:                                      ; preds = %vector.body, %start
  %index = phi i64 [ 0, %start ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 3, !dbg !2167
  %0 = getelementptr inbounds nuw i8, ptr %arg, i64 %offset.idx, !dbg !2168
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2169
  %wide.load = load <2 x i64>, ptr %0, align 8, !dbg !2169, !alias.scope !2170, !noalias !2177
  %wide.load49 = load <2 x i64>, ptr %1, align 8, !dbg !2169, !alias.scope !2170, !noalias !2177
  %2 = mul <2 x i64> %wide.load, %wide.load, !dbg !2179
  %3 = mul <2 x i64> %wide.load49, %wide.load49, !dbg !2179
  store <2 x i64> %2, ptr %0, align 8, !dbg !2181, !alias.scope !2170, !noalias !2177
  store <2 x i64> %3, ptr %1, align 8, !dbg !2181, !alias.scope !2170, !noalias !2177
  %index.next = add nuw i64 %index, 4
  %4 = icmp eq i64 %index.next, 65536
  br i1 %4, label %_ZN9perf_case5chain10ChainState5chain17hb0067af85f5bde92E.exit, label %vector.body, !llvm.loop !2182

_ZN9perf_case5chain10ChainState5chain17hb0067af85f5bde92E.exit: ; preds = %vector.body
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %_8, ptr noundef nonnull align 8 dereferenceable(524288) %arg, i64 524288, i1 false), !dbg !2183
    #dbg_declare(ptr %_8, !1585, !DIExpression(), !2184)
    #dbg_value(ptr %_8, !1587, !DIExpression(), !2186)
    #dbg_value(ptr undef, !1596, !DIExpression(), !2188)
    #dbg_value(ptr undef, !1609, !DIExpression(), !2188)
    #dbg_value(ptr undef, !1644, !DIExpression(), !2192)
    #dbg_value(ptr %_8, !1663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2193)
    #dbg_value(i64 65536, !1663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2193)
    #dbg_value(i64 1, !1670, !DIExpression(), !2194)
    #dbg_value(ptr %_8, !1664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2196)
    #dbg_value(ptr %_8, !1664, !DIExpression(DW_OP_plus_uconst, 524288, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2196)
    #dbg_value(!DIArgList(ptr %_8, i64 0), !1664, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !2196)
    #dbg_value(!DIArgList(ptr %_8, i64 0), !1645, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2197)
    #dbg_value(!DIArgList(ptr %_8, i64 0), !1676, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2194)
    #dbg_value(ptr %_8, !1646, !DIExpression(DW_OP_plus_uconst, 524288, DW_OP_stack_value), !2198)
  br label %vector.body53, !dbg !2199

vector.body53:                                    ; preds = %vector.body53, %_ZN9perf_case5chain10ChainState5chain17hb0067af85f5bde92E.exit
  %index54 = phi i64 [ 0, %_ZN9perf_case5chain10ChainState5chain17hb0067af85f5bde92E.exit ], [ %index.next58, %vector.body53 ]
  %offset.idx55 = shl i64 %index54, 3, !dbg !2199
  %5 = getelementptr inbounds nuw i8, ptr %_8, i64 %offset.idx55, !dbg !2200
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16, !dbg !2201
  %wide.load56 = load <2 x i64>, ptr %5, align 8, !dbg !2201
  %wide.load57 = load <2 x i64>, ptr %6, align 8, !dbg !2201
  %7 = mul <2 x i64> %wide.load56, %wide.load56, !dbg !2202
  %8 = mul <2 x i64> %wide.load57, %wide.load57, !dbg !2202
  store <2 x i64> %7, ptr %5, align 8, !dbg !2204
  store <2 x i64> %8, ptr %6, align 8, !dbg !2204
  %index.next58 = add nuw i64 %index54, 4
  %9 = icmp eq i64 %index.next58, 65536
  br i1 %9, label %vector.body63, label %vector.body53, !llvm.loop !2205

vector.body63:                                    ; preds = %vector.body53, %vector.body63
  %index64 = phi i64 [ %index.next68, %vector.body63 ], [ 0, %vector.body53 ]
  %offset.idx65 = shl i64 %index64, 3, !dbg !2206
  %10 = getelementptr inbounds nuw i8, ptr %_8, i64 %offset.idx65, !dbg !2211
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16, !dbg !2213
  %wide.load66 = load <2 x i64>, ptr %10, align 8, !dbg !2213
  %wide.load67 = load <2 x i64>, ptr %11, align 8, !dbg !2213
  %12 = mul <2 x i64> %wide.load66, %wide.load66, !dbg !2214
  %13 = mul <2 x i64> %wide.load67, %wide.load67, !dbg !2214
  store <2 x i64> %12, ptr %10, align 8, !dbg !2216
  store <2 x i64> %13, ptr %11, align 8, !dbg !2216
  %index.next68 = add nuw i64 %index64, 4
  %14 = icmp eq i64 %index.next68, 65536
  br i1 %14, label %vector.body73, label %vector.body63, !llvm.loop !2217

vector.body73:                                    ; preds = %vector.body63, %vector.body73
  %index74 = phi i64 [ %index.next78, %vector.body73 ], [ 0, %vector.body63 ]
  %offset.idx75 = shl i64 %index74, 3, !dbg !2218
  %15 = getelementptr inbounds nuw i8, ptr %_8, i64 %offset.idx75, !dbg !2223
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16, !dbg !2225
  %wide.load76 = load <2 x i64>, ptr %15, align 8, !dbg !2225
  %wide.load77 = load <2 x i64>, ptr %16, align 8, !dbg !2225
  %17 = mul <2 x i64> %wide.load76, %wide.load76, !dbg !2226
  %18 = mul <2 x i64> %wide.load77, %wide.load77, !dbg !2226
  store <2 x i64> %17, ptr %15, align 8, !dbg !2228
  store <2 x i64> %18, ptr %16, align 8, !dbg !2228
  %index.next78 = add nuw i64 %index74, 4
  %19 = icmp eq i64 %index.next78, 65536
  br i1 %19, label %vector.body83, label %vector.body73, !llvm.loop !2229

vector.body83:                                    ; preds = %vector.body73, %vector.body83
  %index84 = phi i64 [ %index.next88, %vector.body83 ], [ 0, %vector.body73 ]
  %offset.idx85 = shl i64 %index84, 3, !dbg !2230
  %20 = getelementptr inbounds nuw i8, ptr %_8, i64 %offset.idx85, !dbg !2235
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 16, !dbg !2237
  %wide.load86 = load <2 x i64>, ptr %20, align 8, !dbg !2237
  %wide.load87 = load <2 x i64>, ptr %21, align 8, !dbg !2237
  %22 = mul <2 x i64> %wide.load86, %wide.load86, !dbg !2238
  %23 = mul <2 x i64> %wide.load87, %wide.load87, !dbg !2238
  store <2 x i64> %22, ptr %20, align 8, !dbg !2240
  store <2 x i64> %23, ptr %21, align 8, !dbg !2240
  %index.next88 = add nuw i64 %index84, 4
  %24 = icmp eq i64 %index.next88, 65536
  br i1 %24, label %vector.body93, label %vector.body83, !llvm.loop !2241

vector.body93:                                    ; preds = %vector.body83, %vector.body93
  %index94 = phi i64 [ %index.next98, %vector.body93 ], [ 0, %vector.body83 ]
  %offset.idx95 = shl i64 %index94, 3, !dbg !2242
  %25 = getelementptr inbounds nuw i8, ptr %_8, i64 %offset.idx95, !dbg !2247
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 16, !dbg !2249
  %wide.load96 = load <2 x i64>, ptr %25, align 8, !dbg !2249
  %wide.load97 = load <2 x i64>, ptr %26, align 8, !dbg !2249
  %27 = mul <2 x i64> %wide.load96, %wide.load96, !dbg !2250
  %28 = mul <2 x i64> %wide.load97, %wide.load97, !dbg !2250
  store <2 x i64> %27, ptr %25, align 8, !dbg !2252
  store <2 x i64> %28, ptr %26, align 8, !dbg !2252
  %index.next98 = add nuw i64 %index94, 4
  %29 = icmp eq i64 %index.next98, 65536
  br i1 %29, label %vector.body103, label %vector.body93, !llvm.loop !2253

vector.body103:                                   ; preds = %vector.body93, %vector.body103
  %index104 = phi i64 [ %index.next108, %vector.body103 ], [ 0, %vector.body93 ]
  %offset.idx105 = shl i64 %index104, 3, !dbg !2254
  %30 = getelementptr inbounds nuw i8, ptr %_8, i64 %offset.idx105, !dbg !2259
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 16, !dbg !2261
  %wide.load106 = load <2 x i64>, ptr %30, align 8, !dbg !2261
  %wide.load107 = load <2 x i64>, ptr %31, align 8, !dbg !2261
  %32 = mul <2 x i64> %wide.load106, %wide.load106, !dbg !2262
  %33 = mul <2 x i64> %wide.load107, %wide.load107, !dbg !2262
  store <2 x i64> %32, ptr %30, align 8, !dbg !2264
  store <2 x i64> %33, ptr %31, align 8, !dbg !2264
  %index.next108 = add nuw i64 %index104, 4
  %34 = icmp eq i64 %index.next108, 65536
  br i1 %34, label %_ZN9perf_case5chain10ChainState5chain17hb0067af85f5bde92E.exit48, label %vector.body103, !llvm.loop !2265

_ZN9perf_case5chain10ChainState5chain17hb0067af85f5bde92E.exit48: ; preds = %vector.body103
    #dbg_declare(ptr %_8, !1737, !DIExpression(), !2266)
    #dbg_declare(ptr %self1.i, !1739, !DIExpression(), !2268)
    #dbg_declare(ptr %self1.i, !1782, !DIExpression(), !2270)
    #dbg_declare(ptr %_8, !1792, !DIExpression(), !2272)
  call void @llvm.lifetime.start.p0(i64 524304, ptr nonnull %self1.i), !dbg !2274, !noalias !2275
  %_5.sroa.5.0.self1.sroa_idx.i = getelementptr inbounds nuw i8, ptr %self1.i, i64 16, !dbg !2278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %_5.sroa.5.0.self1.sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(524288) %_8, i64 524288, i1 false), !dbg !2278
    #dbg_declare(ptr %self1.i, !1803, !DIExpression(), !2279)
    #dbg_value(i64 0, !1811, !DIExpression(), !2281)
    #dbg_value(i64 0, !1819, !DIExpression(), !2282)
    #dbg_value(i64 0, !1844, !DIExpression(), !2284)
    #dbg_declare(ptr undef, !1812, !DIExpression(), !2286)
    #dbg_declare(ptr undef, !1841, !DIExpression(), !2287)
    #dbg_declare(ptr undef, !1863, !DIExpression(), !2288)
    #dbg_value(ptr %self1.i, !1840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2282)
    #dbg_value(ptr %self1.i, !1862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2284)
    #dbg_value(i64 65536, !1840, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2282)
    #dbg_value(i64 65536, !1862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2284)
    #dbg_value(ptr %_5.sroa.5.0.self1.sroa_idx.i, !1864, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2289)
    #dbg_value(i64 65536, !1864, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2289)
    #dbg_value(i64 0, !1877, !DIExpression(), !2290)
    #dbg_value(ptr %_5.sroa.5.0.self1.sroa_idx.i, !1892, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2290)
    #dbg_value(i64 65536, !1892, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2290)
    #dbg_value(ptr %self1.i, !1891, !DIExpression(), !2290)
    #dbg_value(ptr %self1.i, !1906, !DIExpression(), !2292)
    #dbg_value(i64 1, !1916, !DIExpression(), !2294)
  br label %vector.body113, !dbg !2296

vector.body113:                                   ; preds = %vector.body113, %_ZN9perf_case5chain10ChainState5chain17hb0067af85f5bde92E.exit48
  %index114 = phi i64 [ 0, %_ZN9perf_case5chain10ChainState5chain17hb0067af85f5bde92E.exit48 ], [ %index.next118.3, %vector.body113 ], !dbg !2297
  %vec.phi = phi <2 x i64> [ zeroinitializer, %_ZN9perf_case5chain10ChainState5chain17hb0067af85f5bde92E.exit48 ], [ %49, %vector.body113 ]
  %vec.phi115 = phi <2 x i64> [ zeroinitializer, %_ZN9perf_case5chain10ChainState5chain17hb0067af85f5bde92E.exit48 ], [ %50, %vector.body113 ]
  %35 = getelementptr inbounds nuw i64, ptr %_5.sroa.5.0.self1.sroa_idx.i, i64 %index114, !dbg !2298
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 16, !dbg !2303
  %wide.load116 = load <2 x i64>, ptr %35, align 8, !dbg !2303, !alias.scope !2307, !noalias !2312
  %wide.load117 = load <2 x i64>, ptr %36, align 8, !dbg !2303, !alias.scope !2307, !noalias !2312
  %37 = add <2 x i64> %wide.load116, %vec.phi, !dbg !2314
  %38 = add <2 x i64> %wide.load117, %vec.phi115, !dbg !2314
  %index.next118 = or disjoint i64 %index114, 4, !dbg !2297
  %39 = getelementptr inbounds nuw i64, ptr %_5.sroa.5.0.self1.sroa_idx.i, i64 %index.next118, !dbg !2298
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 16, !dbg !2303
  %wide.load116.1 = load <2 x i64>, ptr %39, align 8, !dbg !2303, !alias.scope !2307, !noalias !2312
  %wide.load117.1 = load <2 x i64>, ptr %40, align 8, !dbg !2303, !alias.scope !2307, !noalias !2312
  %41 = add <2 x i64> %wide.load116.1, %37, !dbg !2314
  %42 = add <2 x i64> %wide.load117.1, %38, !dbg !2314
  %index.next118.1 = or disjoint i64 %index114, 8, !dbg !2297
  %43 = getelementptr inbounds nuw i64, ptr %_5.sroa.5.0.self1.sroa_idx.i, i64 %index.next118.1, !dbg !2298
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 16, !dbg !2303
  %wide.load116.2 = load <2 x i64>, ptr %43, align 8, !dbg !2303, !alias.scope !2307, !noalias !2312
  %wide.load117.2 = load <2 x i64>, ptr %44, align 8, !dbg !2303, !alias.scope !2307, !noalias !2312
  %45 = add <2 x i64> %wide.load116.2, %41, !dbg !2314
  %46 = add <2 x i64> %wide.load117.2, %42, !dbg !2314
  %index.next118.2 = or disjoint i64 %index114, 12, !dbg !2297
  %47 = getelementptr inbounds nuw i64, ptr %_5.sroa.5.0.self1.sroa_idx.i, i64 %index.next118.2, !dbg !2298
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 16, !dbg !2303
  %wide.load116.3 = load <2 x i64>, ptr %47, align 8, !dbg !2303, !alias.scope !2307, !noalias !2312
  %wide.load117.3 = load <2 x i64>, ptr %48, align 8, !dbg !2303, !alias.scope !2307, !noalias !2312
  %49 = add <2 x i64> %wide.load116.3, %45, !dbg !2314
  %50 = add <2 x i64> %wide.load117.3, %46, !dbg !2314
  %index.next118.3 = add nuw nsw i64 %index114, 16, !dbg !2297
  %51 = icmp eq i64 %index.next118.3, 65536, !dbg !2297
  br i1 %51, label %middle.block110, label %vector.body113, !dbg !2297, !llvm.loop !2317

middle.block110:                                  ; preds = %vector.body113
  %bin.rdx = add <2 x i64> %50, %49, !dbg !2296
  %52 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !2296
  call void @llvm.lifetime.end.p0(i64 524304, ptr nonnull %self1.i), !dbg !2318, !noalias !2275
  ret i64 %52, !dbg !2319
}

; perf_case::chain::many_chain_refm
; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define noundef i64 @_ZN9perf_case5chain15many_chain_refm17h1a0bdb98e46ab4f5E(ptr noalias nocapture noundef align 8 dereferenceable(524288) %arg) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !2320 {
start:
  %self1.i = alloca [524304 x i8], align 8
    #dbg_declare(ptr %arg, !2322, !DIExpression(), !2323)
    #dbg_value(ptr %arg, !2037, !DIExpression(), !2324)
    #dbg_value(ptr %arg, !1587, !DIExpression(), !2326)
    #dbg_value(ptr undef, !1596, !DIExpression(), !2328)
    #dbg_value(ptr undef, !1609, !DIExpression(), !2328)
    #dbg_value(ptr undef, !1644, !DIExpression(), !2332)
    #dbg_value(ptr %arg, !1663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2333)
    #dbg_value(i64 65536, !1663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2333)
    #dbg_value(i64 1, !1670, !DIExpression(), !2334)
    #dbg_value(ptr %arg, !1664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2336)
    #dbg_value(ptr %arg, !1664, !DIExpression(DW_OP_plus_uconst, 524288, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2336)
    #dbg_value(!DIArgList(ptr %arg, i64 0), !1664, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !2336)
    #dbg_value(!DIArgList(ptr %arg, i64 0), !1645, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2337)
    #dbg_value(!DIArgList(ptr %arg, i64 0), !1676, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2334)
    #dbg_value(ptr %arg, !1646, !DIExpression(DW_OP_plus_uconst, 524288, DW_OP_stack_value), !2338)
  br label %vector.body, !dbg !2339

vector.body:                                      ; preds = %vector.body, %start
  %index = phi i64 [ 0, %start ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 3, !dbg !2339
  %0 = getelementptr inbounds nuw i8, ptr %arg, i64 %offset.idx, !dbg !2340
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2341
  %wide.load = load <2 x i64>, ptr %0, align 8, !dbg !2341, !alias.scope !2342
  %wide.load49 = load <2 x i64>, ptr %1, align 8, !dbg !2341, !alias.scope !2342
  %2 = mul <2 x i64> %wide.load, %wide.load, !dbg !2349
  %3 = mul <2 x i64> %wide.load49, %wide.load49, !dbg !2349
  store <2 x i64> %2, ptr %0, align 8, !dbg !2351, !alias.scope !2342
  store <2 x i64> %3, ptr %1, align 8, !dbg !2351, !alias.scope !2342
  %index.next = add nuw i64 %index, 4
  %4 = icmp eq i64 %index.next, 65536
  br i1 %4, label %vector.body53, label %vector.body, !llvm.loop !2352

vector.body53:                                    ; preds = %vector.body, %vector.body53
  %index54 = phi i64 [ %index.next58, %vector.body53 ], [ 0, %vector.body ]
  %offset.idx55 = shl i64 %index54, 3, !dbg !2353
  %5 = getelementptr inbounds nuw i8, ptr %arg, i64 %offset.idx55, !dbg !2358
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16, !dbg !2360
  %wide.load56 = load <2 x i64>, ptr %5, align 8, !dbg !2360, !alias.scope !2361
  %wide.load57 = load <2 x i64>, ptr %6, align 8, !dbg !2360, !alias.scope !2361
  %7 = mul <2 x i64> %wide.load56, %wide.load56, !dbg !2368
  %8 = mul <2 x i64> %wide.load57, %wide.load57, !dbg !2368
  store <2 x i64> %7, ptr %5, align 8, !dbg !2370, !alias.scope !2361
  store <2 x i64> %8, ptr %6, align 8, !dbg !2370, !alias.scope !2361
  %index.next58 = add nuw i64 %index54, 4
  %9 = icmp eq i64 %index.next58, 65536
  br i1 %9, label %vector.body63, label %vector.body53, !llvm.loop !2371

vector.body63:                                    ; preds = %vector.body53, %vector.body63
  %index64 = phi i64 [ %index.next68, %vector.body63 ], [ 0, %vector.body53 ]
  %offset.idx65 = shl i64 %index64, 3, !dbg !2372
  %10 = getelementptr inbounds nuw i8, ptr %arg, i64 %offset.idx65, !dbg !2377
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16, !dbg !2379
  %wide.load66 = load <2 x i64>, ptr %10, align 8, !dbg !2379, !alias.scope !2380
  %wide.load67 = load <2 x i64>, ptr %11, align 8, !dbg !2379, !alias.scope !2380
  %12 = mul <2 x i64> %wide.load66, %wide.load66, !dbg !2387
  %13 = mul <2 x i64> %wide.load67, %wide.load67, !dbg !2387
  store <2 x i64> %12, ptr %10, align 8, !dbg !2389, !alias.scope !2380
  store <2 x i64> %13, ptr %11, align 8, !dbg !2389, !alias.scope !2380
  %index.next68 = add nuw i64 %index64, 4
  %14 = icmp eq i64 %index.next68, 65536
  br i1 %14, label %vector.body73, label %vector.body63, !llvm.loop !2390

vector.body73:                                    ; preds = %vector.body63, %vector.body73
  %index74 = phi i64 [ %index.next78, %vector.body73 ], [ 0, %vector.body63 ]
  %offset.idx75 = shl i64 %index74, 3, !dbg !2391
  %15 = getelementptr inbounds nuw i8, ptr %arg, i64 %offset.idx75, !dbg !2396
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16, !dbg !2398
  %wide.load76 = load <2 x i64>, ptr %15, align 8, !dbg !2398, !alias.scope !2399
  %wide.load77 = load <2 x i64>, ptr %16, align 8, !dbg !2398, !alias.scope !2399
  %17 = mul <2 x i64> %wide.load76, %wide.load76, !dbg !2406
  %18 = mul <2 x i64> %wide.load77, %wide.load77, !dbg !2406
  store <2 x i64> %17, ptr %15, align 8, !dbg !2408, !alias.scope !2399
  store <2 x i64> %18, ptr %16, align 8, !dbg !2408, !alias.scope !2399
  %index.next78 = add nuw i64 %index74, 4
  %19 = icmp eq i64 %index.next78, 65536
  br i1 %19, label %vector.body83, label %vector.body73, !llvm.loop !2409

vector.body83:                                    ; preds = %vector.body73, %vector.body83
  %index84 = phi i64 [ %index.next88, %vector.body83 ], [ 0, %vector.body73 ]
  %offset.idx85 = shl i64 %index84, 3, !dbg !2410
  %20 = getelementptr inbounds nuw i8, ptr %arg, i64 %offset.idx85, !dbg !2415
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 16, !dbg !2417
  %wide.load86 = load <2 x i64>, ptr %20, align 8, !dbg !2417, !alias.scope !2418
  %wide.load87 = load <2 x i64>, ptr %21, align 8, !dbg !2417, !alias.scope !2418
  %22 = mul <2 x i64> %wide.load86, %wide.load86, !dbg !2425
  %23 = mul <2 x i64> %wide.load87, %wide.load87, !dbg !2425
  store <2 x i64> %22, ptr %20, align 8, !dbg !2427, !alias.scope !2418
  store <2 x i64> %23, ptr %21, align 8, !dbg !2427, !alias.scope !2418
  %index.next88 = add nuw i64 %index84, 4
  %24 = icmp eq i64 %index.next88, 65536
  br i1 %24, label %vector.body93, label %vector.body83, !llvm.loop !2428

vector.body93:                                    ; preds = %vector.body83, %vector.body93
  %index94 = phi i64 [ %index.next98, %vector.body93 ], [ 0, %vector.body83 ]
  %offset.idx95 = shl i64 %index94, 3, !dbg !2429
  %25 = getelementptr inbounds nuw i8, ptr %arg, i64 %offset.idx95, !dbg !2434
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 16, !dbg !2436
  %wide.load96 = load <2 x i64>, ptr %25, align 8, !dbg !2436, !alias.scope !2437
  %wide.load97 = load <2 x i64>, ptr %26, align 8, !dbg !2436, !alias.scope !2437
  %27 = mul <2 x i64> %wide.load96, %wide.load96, !dbg !2444
  %28 = mul <2 x i64> %wide.load97, %wide.load97, !dbg !2444
  store <2 x i64> %27, ptr %25, align 8, !dbg !2446, !alias.scope !2437
  store <2 x i64> %28, ptr %26, align 8, !dbg !2446, !alias.scope !2437
  %index.next98 = add nuw i64 %index94, 4
  %29 = icmp eq i64 %index.next98, 65536
  br i1 %29, label %vector.body103, label %vector.body93, !llvm.loop !2447

vector.body103:                                   ; preds = %vector.body93, %vector.body103
  %index104 = phi i64 [ %index.next108, %vector.body103 ], [ 0, %vector.body93 ]
  %offset.idx105 = shl i64 %index104, 3, !dbg !2448
  %30 = getelementptr inbounds nuw i8, ptr %arg, i64 %offset.idx105, !dbg !2453
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 16, !dbg !2455
  %wide.load106 = load <2 x i64>, ptr %30, align 8, !dbg !2455, !alias.scope !2456
  %wide.load107 = load <2 x i64>, ptr %31, align 8, !dbg !2455, !alias.scope !2456
  %32 = mul <2 x i64> %wide.load106, %wide.load106, !dbg !2463
  %33 = mul <2 x i64> %wide.load107, %wide.load107, !dbg !2463
  store <2 x i64> %32, ptr %30, align 8, !dbg !2465, !alias.scope !2456
  store <2 x i64> %33, ptr %31, align 8, !dbg !2465, !alias.scope !2456
  %index.next108 = add nuw i64 %index104, 4
  %34 = icmp eq i64 %index.next108, 65536
  br i1 %34, label %_ZN9perf_case5chain10ChainState10chain_refm17hdd769c1678ff3745E.exit48, label %vector.body103, !llvm.loop !2466

_ZN9perf_case5chain10ChainState10chain_refm17hdd769c1678ff3745E.exit48: ; preds = %vector.body103
  %_5.sroa.5.0.self1.sroa_idx.i = getelementptr inbounds nuw i8, ptr %self1.i, i64 16, !dbg !2467
  call void @llvm.lifetime.start.p0(i64 524304, ptr nonnull %self1.i), !dbg !2470, !noalias !2471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %_5.sroa.5.0.self1.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(524288) %arg, i64 524288, i1 false), !dbg !2474
    #dbg_declare(ptr poison, !1737, !DIExpression(), !2475)
    #dbg_declare(ptr %self1.i, !1739, !DIExpression(), !2476)
    #dbg_declare(ptr %self1.i, !1782, !DIExpression(), !2478)
    #dbg_declare(ptr poison, !1792, !DIExpression(), !2480)
    #dbg_declare(ptr %self1.i, !1803, !DIExpression(), !2481)
    #dbg_value(i64 0, !1811, !DIExpression(), !2483)
    #dbg_value(i64 0, !1819, !DIExpression(), !2484)
    #dbg_value(i64 0, !1844, !DIExpression(), !2486)
    #dbg_declare(ptr undef, !1812, !DIExpression(), !2488)
    #dbg_declare(ptr undef, !1841, !DIExpression(), !2489)
    #dbg_declare(ptr undef, !1863, !DIExpression(), !2490)
    #dbg_value(ptr %self1.i, !1840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2484)
    #dbg_value(ptr %self1.i, !1862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2486)
    #dbg_value(i64 65536, !1840, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2484)
    #dbg_value(i64 65536, !1862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2486)
    #dbg_value(ptr %_5.sroa.5.0.self1.sroa_idx.i, !1864, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2491)
    #dbg_value(i64 65536, !1864, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2491)
    #dbg_value(i64 0, !1877, !DIExpression(), !2492)
    #dbg_value(ptr %_5.sroa.5.0.self1.sroa_idx.i, !1892, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2492)
    #dbg_value(i64 65536, !1892, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2492)
    #dbg_value(ptr %self1.i, !1891, !DIExpression(), !2492)
    #dbg_value(ptr %self1.i, !1906, !DIExpression(), !2494)
    #dbg_value(i64 1, !1916, !DIExpression(), !2496)
  br label %vector.body113, !dbg !2498

vector.body113:                                   ; preds = %vector.body113, %_ZN9perf_case5chain10ChainState10chain_refm17hdd769c1678ff3745E.exit48
  %index114 = phi i64 [ 0, %_ZN9perf_case5chain10ChainState10chain_refm17hdd769c1678ff3745E.exit48 ], [ %index.next118.3, %vector.body113 ], !dbg !2499
  %vec.phi = phi <2 x i64> [ zeroinitializer, %_ZN9perf_case5chain10ChainState10chain_refm17hdd769c1678ff3745E.exit48 ], [ %49, %vector.body113 ]
  %vec.phi115 = phi <2 x i64> [ zeroinitializer, %_ZN9perf_case5chain10ChainState10chain_refm17hdd769c1678ff3745E.exit48 ], [ %50, %vector.body113 ]
  %35 = getelementptr inbounds nuw i64, ptr %_5.sroa.5.0.self1.sroa_idx.i, i64 %index114, !dbg !2500
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 16, !dbg !2505
  %wide.load116 = load <2 x i64>, ptr %35, align 8, !dbg !2505, !alias.scope !2509, !noalias !2514
  %wide.load117 = load <2 x i64>, ptr %36, align 8, !dbg !2505, !alias.scope !2509, !noalias !2514
  %37 = add <2 x i64> %wide.load116, %vec.phi, !dbg !2516
  %38 = add <2 x i64> %wide.load117, %vec.phi115, !dbg !2516
  %index.next118 = or disjoint i64 %index114, 4, !dbg !2499
  %39 = getelementptr inbounds nuw i64, ptr %_5.sroa.5.0.self1.sroa_idx.i, i64 %index.next118, !dbg !2500
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 16, !dbg !2505
  %wide.load116.1 = load <2 x i64>, ptr %39, align 8, !dbg !2505, !alias.scope !2509, !noalias !2514
  %wide.load117.1 = load <2 x i64>, ptr %40, align 8, !dbg !2505, !alias.scope !2509, !noalias !2514
  %41 = add <2 x i64> %wide.load116.1, %37, !dbg !2516
  %42 = add <2 x i64> %wide.load117.1, %38, !dbg !2516
  %index.next118.1 = or disjoint i64 %index114, 8, !dbg !2499
  %43 = getelementptr inbounds nuw i64, ptr %_5.sroa.5.0.self1.sroa_idx.i, i64 %index.next118.1, !dbg !2500
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 16, !dbg !2505
  %wide.load116.2 = load <2 x i64>, ptr %43, align 8, !dbg !2505, !alias.scope !2509, !noalias !2514
  %wide.load117.2 = load <2 x i64>, ptr %44, align 8, !dbg !2505, !alias.scope !2509, !noalias !2514
  %45 = add <2 x i64> %wide.load116.2, %41, !dbg !2516
  %46 = add <2 x i64> %wide.load117.2, %42, !dbg !2516
  %index.next118.2 = or disjoint i64 %index114, 12, !dbg !2499
  %47 = getelementptr inbounds nuw i64, ptr %_5.sroa.5.0.self1.sroa_idx.i, i64 %index.next118.2, !dbg !2500
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 16, !dbg !2505
  %wide.load116.3 = load <2 x i64>, ptr %47, align 8, !dbg !2505, !alias.scope !2509, !noalias !2514
  %wide.load117.3 = load <2 x i64>, ptr %48, align 8, !dbg !2505, !alias.scope !2509, !noalias !2514
  %49 = add <2 x i64> %wide.load116.3, %45, !dbg !2516
  %50 = add <2 x i64> %wide.load117.3, %46, !dbg !2516
  %index.next118.3 = add nuw nsw i64 %index114, 16, !dbg !2499
  %51 = icmp eq i64 %index.next118.3, 65536, !dbg !2499
  br i1 %51, label %middle.block110, label %vector.body113, !dbg !2499, !llvm.loop !2519

middle.block110:                                  ; preds = %vector.body113
  %bin.rdx = add <2 x i64> %50, %49, !dbg !2498
  %52 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !2498
  call void @llvm.lifetime.end.p0(i64 524304, ptr nonnull %self1.i), !dbg !2520, !noalias !2471
  ret i64 %52, !dbg !2521
}

; perf_case::zero_init::ZeroInit::assign_3rd
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9perf_case9zero_init8ZeroInit10assign_3rd17hccebfaeeea8f7c31E(ptr noalias nocapture noundef writeonly align 8 dereferenceable(200) initializes((0, 200)) %self, ptr noalias nocapture noundef readonly align 8 dereferenceable(200) %data) unnamed_addr #6 !dbg !2522 {
start:
    #dbg_value(ptr %self, !2537, !DIExpression(), !2539)
    #dbg_value(ptr %data, !2538, !DIExpression(), !2539)
    #dbg_value(ptr %data, !2540, !DIExpression(), !2547)
    #dbg_value(ptr %self, !2546, !DIExpression(), !2547)
    #dbg_value(ptr %self, !2549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2559)
    #dbg_value(i64 25, !2549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2559)
    #dbg_value(ptr %data, !2558, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2559)
    #dbg_value(i64 25, !2558, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2559)
    #dbg_value(i64 25, !2561, !DIExpression(), !2568)
    #dbg_value(ptr %data, !2566, !DIExpression(), !2568)
    #dbg_value(ptr %self, !2567, !DIExpression(), !2568)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %self, ptr noundef nonnull readonly align 8 dereferenceable(200) %data, i64 200, i1 false), !dbg !2570, !alias.scope !2571
  ret void, !dbg !2575
}

; perf_case::zero_init::init_it
; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9perf_case9zero_init7init_it17ha9b7a4753f452243E(ptr dead_on_unwind noalias nocapture noundef writable writeonly sret([200 x i8]) align 8 dereferenceable(200) initializes((0, 200)) %_0, ptr noalias nocapture noundef readonly align 8 dereferenceable(200) %data) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !2576 {
start:
    #dbg_value(ptr %data, !2580, !DIExpression(), !2583)
    #dbg_declare(ptr poison, !2581, !DIExpression(), !2584)
    #dbg_value(ptr poison, !2537, !DIExpression(), !2585)
    #dbg_value(ptr %data, !2538, !DIExpression(), !2585)
    #dbg_value(ptr %data, !2540, !DIExpression(), !2587)
    #dbg_value(ptr poison, !2546, !DIExpression(), !2587)
    #dbg_value(ptr poison, !2549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2589)
    #dbg_value(i64 25, !2549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2589)
    #dbg_value(ptr %data, !2558, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2589)
    #dbg_value(i64 25, !2558, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2589)
    #dbg_value(i64 25, !2561, !DIExpression(), !2591)
    #dbg_value(ptr %data, !2566, !DIExpression(), !2591)
    #dbg_value(ptr poison, !2567, !DIExpression(), !2591)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %_0, ptr noundef nonnull readonly align 8 dereferenceable(200) %data, i64 200, i1 false), !dbg !2593
  ret void, !dbg !2594
}
