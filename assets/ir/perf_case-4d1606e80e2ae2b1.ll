; ModuleID = 'perf_case.645865a49719de64-cgu.0'
source_filename = "perf_case.645865a49719de64-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__rust_no_alloc_shim_is_unstable = external global i8
@alloc_a15033f644a617b97dffd8b50344a222 = private unnamed_addr constant [33 x i8] c"crates/perf-case/src/black_box.rs", align 1
@alloc_148d1cb1015daa4bbbb4403656f06f19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a15033f644a617b97dffd8b50344a222, [16 x i8] c"!\00\00\00\00\00\00\00\09\00\00\00\0B\00\00\00" }>, align 8
@alloc_3d17f1da9e467dff42628079304e272a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a15033f644a617b97dffd8b50344a222, [16 x i8] c"!\00\00\00\00\00\00\00\0F\00\00\00\11\00\00\00" }>, align 8
@alloc_171de55d3d26e296bf5a0676ecc89506 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a15033f644a617b97dffd8b50344a222, [16 x i8] c"!\00\00\00\00\00\00\00\22\00\00\00\11\00\00\00" }>, align 8
@alloc_393f5d963e067074b93f091948322352 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a15033f644a617b97dffd8b50344a222, [16 x i8] c"!\00\00\00\00\00\00\00+\00\00\00&\00\00\00" }>, align 8

; perf_case::chain::many_chain
; Function Attrs: noinline nonlazybind uwtable
define noundef i64 @_ZN9perf_case5chain10many_chain17h12412cd1860633f8E(ptr noalias nocapture noundef align 8 dereferenceable(524288) %arg) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2057 {
start:
  %self1.i = alloca [524304 x i8], align 8
  %_8 = alloca [524288 x i8], align 8
  %_7 = alloca [524288 x i8], align 8
  %_6 = alloca [524288 x i8], align 8
  %_5 = alloca [524288 x i8], align 8
  %_4 = alloca [524288 x i8], align 8
  %_3 = alloca [524288 x i8], align 8
    #dbg_declare(ptr %arg, !2059, !DIExpression(), !2060)
  call void @llvm.lifetime.start.p0(i64 524288, ptr nonnull %_3), !dbg !2061
  call void @llvm.lifetime.start.p0(i64 524288, ptr nonnull %_4), !dbg !2061
  call void @llvm.lifetime.start.p0(i64 524288, ptr nonnull %_5), !dbg !2061
  call void @llvm.lifetime.start.p0(i64 524288, ptr nonnull %_6), !dbg !2061
  call void @llvm.lifetime.start.p0(i64 524288, ptr nonnull %_7), !dbg !2061
  call void @llvm.lifetime.start.p0(i64 524288, ptr nonnull %_8), !dbg !2061
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2062), !dbg !2061
    #dbg_declare(ptr %arg, !1585, !DIExpression(), !2065)
    #dbg_value(ptr %arg, !1587, !DIExpression(), !2067)
; call update_data::update
  tail call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %arg, i64 noundef 65536), !dbg !2069, !noalias !2062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %_8, ptr noundef nonnull align 8 dereferenceable(524288) %arg, i64 524288, i1 false), !dbg !2070, !alias.scope !2071
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2073), !dbg !2061
    #dbg_declare(ptr %_8, !1585, !DIExpression(), !2076)
    #dbg_value(ptr %_8, !1587, !DIExpression(), !2078)
; call update_data::update
  call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %_8, i64 noundef 65536), !dbg !2080, !noalias !2073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %_7, ptr noundef nonnull align 8 dereferenceable(524288) %_8, i64 524288, i1 false), !dbg !2081, !alias.scope !2082
  call void @llvm.lifetime.end.p0(i64 524288, ptr nonnull %_8), !dbg !2084
  call void @llvm.experimental.noalias.scope.decl(metadata !2085), !dbg !2061
    #dbg_declare(ptr %_7, !1585, !DIExpression(), !2088)
    #dbg_value(ptr %_7, !1587, !DIExpression(), !2090)
; call update_data::update
  call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %_7, i64 noundef 65536), !dbg !2092, !noalias !2085
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %_6, ptr noundef nonnull align 8 dereferenceable(524288) %_7, i64 524288, i1 false), !dbg !2093, !alias.scope !2094
  call void @llvm.lifetime.end.p0(i64 524288, ptr nonnull %_7), !dbg !2096
  call void @llvm.experimental.noalias.scope.decl(metadata !2097), !dbg !2061
    #dbg_declare(ptr %_6, !1585, !DIExpression(), !2100)
    #dbg_value(ptr %_6, !1587, !DIExpression(), !2102)
; call update_data::update
  call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %_6, i64 noundef 65536), !dbg !2104, !noalias !2097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %_5, ptr noundef nonnull align 8 dereferenceable(524288) %_6, i64 524288, i1 false), !dbg !2105, !alias.scope !2106
  call void @llvm.lifetime.end.p0(i64 524288, ptr nonnull %_6), !dbg !2108
  call void @llvm.experimental.noalias.scope.decl(metadata !2109), !dbg !2061
    #dbg_declare(ptr %_5, !1585, !DIExpression(), !2112)
    #dbg_value(ptr %_5, !1587, !DIExpression(), !2114)
; call update_data::update
  call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %_5, i64 noundef 65536), !dbg !2116, !noalias !2109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %_4, ptr noundef nonnull align 8 dereferenceable(524288) %_5, i64 524288, i1 false), !dbg !2117, !alias.scope !2118
  call void @llvm.lifetime.end.p0(i64 524288, ptr nonnull %_5), !dbg !2120
  call void @llvm.experimental.noalias.scope.decl(metadata !2121), !dbg !2061
    #dbg_declare(ptr %_4, !1585, !DIExpression(), !2124)
    #dbg_value(ptr %_4, !1587, !DIExpression(), !2126)
; call update_data::update
  call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %_4, i64 noundef 65536), !dbg !2128, !noalias !2121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %_3, ptr noundef nonnull align 8 dereferenceable(524288) %_4, i64 524288, i1 false), !dbg !2129, !alias.scope !2130
  call void @llvm.lifetime.end.p0(i64 524288, ptr nonnull %_4), !dbg !2132
    #dbg_declare(ptr %_3, !1585, !DIExpression(), !2133)
    #dbg_value(ptr %_3, !1587, !DIExpression(), !2135)
; call update_data::update
  call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %_3, i64 noundef 65536), !dbg !2137, !noalias !2138
  %_5.sroa.5.0.self1.sroa_idx.i = getelementptr inbounds nuw i8, ptr %self1.i, i64 16, !dbg !2141
  call void @llvm.lifetime.start.p0(i64 524304, ptr nonnull %self1.i), !dbg !2144, !noalias !2145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %_5.sroa.5.0.self1.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(524288) %_3, i64 524288, i1 false), !dbg !2148
  call void @llvm.lifetime.end.p0(i64 524288, ptr nonnull %_3), !dbg !2149
    #dbg_declare(ptr poison, !1607, !DIExpression(), !2150)
    #dbg_declare(ptr %self1.i, !1609, !DIExpression(), !2151)
    #dbg_declare(ptr %self1.i, !1654, !DIExpression(), !2153)
    #dbg_declare(ptr poison, !1664, !DIExpression(), !2155)
    #dbg_declare(ptr %self1.i, !1675, !DIExpression(), !2156)
    #dbg_value(i64 0, !1683, !DIExpression(), !2158)
    #dbg_value(i64 0, !1691, !DIExpression(), !2159)
    #dbg_value(i64 0, !1716, !DIExpression(), !2161)
    #dbg_declare(ptr undef, !1684, !DIExpression(), !2163)
    #dbg_declare(ptr undef, !1713, !DIExpression(), !2164)
    #dbg_declare(ptr undef, !1735, !DIExpression(), !2165)
    #dbg_value(ptr %self1.i, !1712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2159)
    #dbg_value(ptr %self1.i, !1734, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2161)
    #dbg_value(i64 65536, !1712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2159)
    #dbg_value(i64 65536, !1734, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2161)
    #dbg_value(ptr %_5.sroa.5.0.self1.sroa_idx.i, !1736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2166)
    #dbg_value(i64 65536, !1736, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2166)
    #dbg_value(i64 0, !1749, !DIExpression(), !2167)
    #dbg_value(ptr %_5.sroa.5.0.self1.sroa_idx.i, !1764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2167)
    #dbg_value(i64 65536, !1764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2167)
    #dbg_value(ptr %self1.i, !1763, !DIExpression(), !2167)
    #dbg_value(ptr %self1.i, !1778, !DIExpression(), !2169)
    #dbg_value(i64 1, !1788, !DIExpression(), !2171)
  br label %vector.body, !dbg !2173

vector.body:                                      ; preds = %vector.body, %start
  %index = phi i64 [ 0, %start ], [ %index.next.3, %vector.body ], !dbg !2174
  %vec.phi = phi <2 x i64> [ zeroinitializer, %start ], [ %14, %vector.body ]
  %vec.phi1 = phi <2 x i64> [ zeroinitializer, %start ], [ %15, %vector.body ]
  %0 = getelementptr inbounds nuw i64, ptr %_5.sroa.5.0.self1.sroa_idx.i, i64 %index, !dbg !2175
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2180
  %wide.load = load <2 x i64>, ptr %0, align 8, !dbg !2180, !alias.scope !2184, !noalias !2189
  %wide.load2 = load <2 x i64>, ptr %1, align 8, !dbg !2180, !alias.scope !2184, !noalias !2189
  %2 = add <2 x i64> %wide.load, %vec.phi, !dbg !2191
  %3 = add <2 x i64> %wide.load2, %vec.phi1, !dbg !2191
  %index.next = or disjoint i64 %index, 4, !dbg !2174
  %4 = getelementptr inbounds nuw i64, ptr %_5.sroa.5.0.self1.sroa_idx.i, i64 %index.next, !dbg !2175
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !2180
  %wide.load.1 = load <2 x i64>, ptr %4, align 8, !dbg !2180, !alias.scope !2184, !noalias !2189
  %wide.load2.1 = load <2 x i64>, ptr %5, align 8, !dbg !2180, !alias.scope !2184, !noalias !2189
  %6 = add <2 x i64> %wide.load.1, %2, !dbg !2191
  %7 = add <2 x i64> %wide.load2.1, %3, !dbg !2191
  %index.next.1 = or disjoint i64 %index, 8, !dbg !2174
  %8 = getelementptr inbounds nuw i64, ptr %_5.sroa.5.0.self1.sroa_idx.i, i64 %index.next.1, !dbg !2175
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 16, !dbg !2180
  %wide.load.2 = load <2 x i64>, ptr %8, align 8, !dbg !2180, !alias.scope !2184, !noalias !2189
  %wide.load2.2 = load <2 x i64>, ptr %9, align 8, !dbg !2180, !alias.scope !2184, !noalias !2189
  %10 = add <2 x i64> %wide.load.2, %6, !dbg !2191
  %11 = add <2 x i64> %wide.load2.2, %7, !dbg !2191
  %index.next.2 = or disjoint i64 %index, 12, !dbg !2174
  %12 = getelementptr inbounds nuw i64, ptr %_5.sroa.5.0.self1.sroa_idx.i, i64 %index.next.2, !dbg !2175
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 16, !dbg !2180
  %wide.load.3 = load <2 x i64>, ptr %12, align 8, !dbg !2180, !alias.scope !2184, !noalias !2189
  %wide.load2.3 = load <2 x i64>, ptr %13, align 8, !dbg !2180, !alias.scope !2184, !noalias !2189
  %14 = add <2 x i64> %wide.load.3, %10, !dbg !2191
  %15 = add <2 x i64> %wide.load2.3, %11, !dbg !2191
  %index.next.3 = add nuw nsw i64 %index, 16, !dbg !2174
  %16 = icmp eq i64 %index.next.3, 65536, !dbg !2174
  br i1 %16, label %middle.block, label %vector.body, !dbg !2174, !llvm.loop !2194

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %15, %14, !dbg !2173
  %17 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !2173
  call void @llvm.lifetime.end.p0(i64 524304, ptr nonnull %self1.i), !dbg !2195, !noalias !2145
  ret i64 %17, !dbg !2196
}

; perf_case::chain::many_chain_refm
; Function Attrs: noinline nonlazybind uwtable
define noundef i64 @_ZN9perf_case5chain15many_chain_refm17ha6a6629d685d517bE(ptr noalias nocapture noundef align 8 dereferenceable(524288) %arg) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2197 {
start:
  %self1.i = alloca [524304 x i8], align 8
    #dbg_declare(ptr %arg, !2199, !DIExpression(), !2200)
    #dbg_value(ptr %arg, !1913, !DIExpression(), !2201)
    #dbg_value(ptr %arg, !1587, !DIExpression(), !2203)
; call update_data::update
  tail call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %arg, i64 noundef 65536), !dbg !2205
    #dbg_value(ptr %arg, !1913, !DIExpression(), !2206)
    #dbg_value(ptr %arg, !1587, !DIExpression(), !2208)
; call update_data::update
  tail call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %arg, i64 noundef 65536), !dbg !2210
    #dbg_value(ptr %arg, !1913, !DIExpression(), !2211)
    #dbg_value(ptr %arg, !1587, !DIExpression(), !2213)
; call update_data::update
  tail call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %arg, i64 noundef 65536), !dbg !2215
    #dbg_value(ptr %arg, !1913, !DIExpression(), !2216)
    #dbg_value(ptr %arg, !1587, !DIExpression(), !2218)
; call update_data::update
  tail call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %arg, i64 noundef 65536), !dbg !2220
    #dbg_value(ptr %arg, !1913, !DIExpression(), !2221)
    #dbg_value(ptr %arg, !1587, !DIExpression(), !2223)
; call update_data::update
  tail call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %arg, i64 noundef 65536), !dbg !2225
    #dbg_value(ptr %arg, !1913, !DIExpression(), !2226)
    #dbg_value(ptr %arg, !1587, !DIExpression(), !2228)
; call update_data::update
  tail call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %arg, i64 noundef 65536), !dbg !2230
    #dbg_value(ptr %arg, !1913, !DIExpression(), !2231)
    #dbg_value(ptr %arg, !1587, !DIExpression(), !2233)
; call update_data::update
  tail call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %arg, i64 noundef 65536), !dbg !2235
  %_5.sroa.5.0.self1.sroa_idx.i = getelementptr inbounds nuw i8, ptr %self1.i, i64 16, !dbg !2236
  call void @llvm.lifetime.start.p0(i64 524304, ptr nonnull %self1.i), !dbg !2239, !noalias !2240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %_5.sroa.5.0.self1.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(524288) %arg, i64 524288, i1 false), !dbg !2243
    #dbg_declare(ptr poison, !1607, !DIExpression(), !2244)
    #dbg_declare(ptr %self1.i, !1609, !DIExpression(), !2245)
    #dbg_declare(ptr %self1.i, !1654, !DIExpression(), !2247)
    #dbg_declare(ptr poison, !1664, !DIExpression(), !2249)
    #dbg_declare(ptr %self1.i, !1675, !DIExpression(), !2250)
    #dbg_value(i64 0, !1683, !DIExpression(), !2252)
    #dbg_value(i64 0, !1691, !DIExpression(), !2253)
    #dbg_value(i64 0, !1716, !DIExpression(), !2255)
    #dbg_declare(ptr undef, !1684, !DIExpression(), !2257)
    #dbg_declare(ptr undef, !1713, !DIExpression(), !2258)
    #dbg_declare(ptr undef, !1735, !DIExpression(), !2259)
    #dbg_value(ptr %self1.i, !1712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2253)
    #dbg_value(ptr %self1.i, !1734, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2255)
    #dbg_value(i64 65536, !1712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2253)
    #dbg_value(i64 65536, !1734, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2255)
    #dbg_value(ptr %_5.sroa.5.0.self1.sroa_idx.i, !1736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2260)
    #dbg_value(i64 65536, !1736, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2260)
    #dbg_value(i64 0, !1749, !DIExpression(), !2261)
    #dbg_value(ptr %_5.sroa.5.0.self1.sroa_idx.i, !1764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2261)
    #dbg_value(i64 65536, !1764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2261)
    #dbg_value(ptr %self1.i, !1763, !DIExpression(), !2261)
    #dbg_value(ptr %self1.i, !1778, !DIExpression(), !2263)
    #dbg_value(i64 1, !1788, !DIExpression(), !2265)
  br label %vector.body, !dbg !2267

vector.body:                                      ; preds = %vector.body, %start
  %index = phi i64 [ 0, %start ], [ %index.next.3, %vector.body ], !dbg !2268
  %vec.phi = phi <2 x i64> [ zeroinitializer, %start ], [ %14, %vector.body ]
  %vec.phi1 = phi <2 x i64> [ zeroinitializer, %start ], [ %15, %vector.body ]
  %0 = getelementptr inbounds nuw i64, ptr %_5.sroa.5.0.self1.sroa_idx.i, i64 %index, !dbg !2269
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2274
  %wide.load = load <2 x i64>, ptr %0, align 8, !dbg !2274, !alias.scope !2278, !noalias !2283
  %wide.load2 = load <2 x i64>, ptr %1, align 8, !dbg !2274, !alias.scope !2278, !noalias !2283
  %2 = add <2 x i64> %wide.load, %vec.phi, !dbg !2285
  %3 = add <2 x i64> %wide.load2, %vec.phi1, !dbg !2285
  %index.next = or disjoint i64 %index, 4, !dbg !2268
  %4 = getelementptr inbounds nuw i64, ptr %_5.sroa.5.0.self1.sroa_idx.i, i64 %index.next, !dbg !2269
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !2274
  %wide.load.1 = load <2 x i64>, ptr %4, align 8, !dbg !2274, !alias.scope !2278, !noalias !2283
  %wide.load2.1 = load <2 x i64>, ptr %5, align 8, !dbg !2274, !alias.scope !2278, !noalias !2283
  %6 = add <2 x i64> %wide.load.1, %2, !dbg !2285
  %7 = add <2 x i64> %wide.load2.1, %3, !dbg !2285
  %index.next.1 = or disjoint i64 %index, 8, !dbg !2268
  %8 = getelementptr inbounds nuw i64, ptr %_5.sroa.5.0.self1.sroa_idx.i, i64 %index.next.1, !dbg !2269
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 16, !dbg !2274
  %wide.load.2 = load <2 x i64>, ptr %8, align 8, !dbg !2274, !alias.scope !2278, !noalias !2283
  %wide.load2.2 = load <2 x i64>, ptr %9, align 8, !dbg !2274, !alias.scope !2278, !noalias !2283
  %10 = add <2 x i64> %wide.load.2, %6, !dbg !2285
  %11 = add <2 x i64> %wide.load2.2, %7, !dbg !2285
  %index.next.2 = or disjoint i64 %index, 12, !dbg !2268
  %12 = getelementptr inbounds nuw i64, ptr %_5.sroa.5.0.self1.sroa_idx.i, i64 %index.next.2, !dbg !2269
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 16, !dbg !2274
  %wide.load.3 = load <2 x i64>, ptr %12, align 8, !dbg !2274, !alias.scope !2278, !noalias !2283
  %wide.load2.3 = load <2 x i64>, ptr %13, align 8, !dbg !2274, !alias.scope !2278, !noalias !2283
  %14 = add <2 x i64> %wide.load.3, %10, !dbg !2285
  %15 = add <2 x i64> %wide.load2.3, %11, !dbg !2285
  %index.next.3 = add nuw nsw i64 %index, 16, !dbg !2268
  %16 = icmp eq i64 %index.next.3, 65536, !dbg !2268
  br i1 %16, label %middle.block, label %vector.body, !dbg !2268, !llvm.loop !2288

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %15, %14, !dbg !2267
  %17 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !2267
  call void @llvm.lifetime.end.p0(i64 524304, ptr nonnull %self1.i), !dbg !2289, !noalias !2240
  ret i64 %17, !dbg !2290
}

; perf_case::zero_init::ZeroInit::assign
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9perf_case9zero_init8ZeroInit6assign17hfb734970a80f8d12E(ptr noalias nocapture noundef writeonly align 8 dereferenceable(200) initializes((0, 200)) %self, ptr noalias nocapture noundef readonly align 8 dereferenceable(200) %data) unnamed_addr #5 !dbg !2291 {
start:
    #dbg_value(ptr %self, !2306, !DIExpression(), !2308)
    #dbg_value(ptr %data, !2307, !DIExpression(), !2308)
    #dbg_value(ptr %self, !2309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2319)
    #dbg_value(i64 25, !2309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2319)
    #dbg_value(ptr %data, !2318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2319)
    #dbg_value(i64 25, !2318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2319)
    #dbg_value(i64 25, !2321, !DIExpression(), !2328)
    #dbg_value(ptr %data, !2326, !DIExpression(), !2328)
    #dbg_value(ptr %self, !2327, !DIExpression(), !2328)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %self, ptr noundef nonnull readonly align 8 dereferenceable(200) %data, i64 200, i1 false), !dbg !2330, !alias.scope !2331
  ret void, !dbg !2335
}

; perf_case::zero_init::ZeroInit::assign_3rd
; Function Attrs: nonlazybind uwtable
define void @_ZN9perf_case9zero_init8ZeroInit10assign_3rd17h46ac06daf0d883ecE(ptr noalias noundef align 8 dereferenceable(200) %self, ptr noalias noundef readonly align 8 dereferenceable(200) %data) unnamed_addr #2 !dbg !2336 {
start:
    #dbg_value(ptr %self, !2339, !DIExpression(), !2341)
    #dbg_value(ptr %data, !2340, !DIExpression(), !2341)
; call update_data::assign
  tail call void @_ZN11update_data6assign17h61a8f40ca2fcc4f7E(ptr noalias noundef nonnull align 8 dereferenceable(200) %self, ptr noalias noundef nonnull readonly align 8 dereferenceable(200) %data), !dbg !2342
  ret void, !dbg !2343
}

; perf_case::zero_init::init_it
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN9perf_case9zero_init7init_it17hea2e57095669a05fE(ptr dead_on_unwind noalias nocapture noundef writable writeonly sret([200 x i8]) align 8 dereferenceable(200) initializes((0, 200)) %_0, ptr noalias noundef readonly align 8 dereferenceable(200) %data) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2344 {
start:
  %a = alloca [200 x i8], align 8
    #dbg_value(ptr %data, !2348, !DIExpression(), !2351)
    #dbg_declare(ptr %a, !2349, !DIExpression(), !2352)
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %a), !dbg !2353
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %a, i8 0, i64 200, i1 false), !dbg !2354
    #dbg_value(ptr %a, !2339, !DIExpression(), !2366)
    #dbg_value(ptr %data, !2340, !DIExpression(), !2366)
; call update_data::assign
  call void @_ZN11update_data6assign17h61a8f40ca2fcc4f7E(ptr noalias noundef nonnull align 8 dereferenceable(200) %a, ptr noalias noundef nonnull readonly align 8 dereferenceable(200) %data), !dbg !2368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %_0, ptr noundef nonnull align 8 dereferenceable(200) %a, i64 200, i1 false), !dbg !2369
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %a), !dbg !2370
  ret void, !dbg !2371
}

; perf_case::zero_init::uninit_it
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN9perf_case9zero_init9uninit_it17h1f640c62abb13c34E(ptr dead_on_unwind noalias nocapture noundef writable writeonly sret([200 x i8]) align 8 dereferenceable(200) %_0, ptr noalias noundef readonly align 8 dereferenceable(200) %data) unnamed_addr #1 !dbg !2372 {
start:
    #dbg_value(ptr %data, !2374, !DIExpression(), !2377)
    #dbg_declare(ptr poison, !2375, !DIExpression(), !2378)
    #dbg_declare(ptr poison, !2379, !DIExpression(), !2394)
    #dbg_value(ptr poison, !2339, !DIExpression(), !2399)
    #dbg_value(ptr %data, !2340, !DIExpression(), !2399)
; call update_data::assign
  tail call void @_ZN11update_data6assign17h61a8f40ca2fcc4f7E(ptr noalias noundef nonnull align 8 dereferenceable(200) %_0, ptr noalias noundef nonnull readonly align 8 dereferenceable(200) %data), !dbg !2401
  ret void, !dbg !2402
}
