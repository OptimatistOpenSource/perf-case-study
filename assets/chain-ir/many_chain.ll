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
    #dbg_declare(ptr poison, !1618, !DIExpression(), !2150)
    #dbg_declare(ptr %self1.i, !1620, !DIExpression(), !2151)
    #dbg_declare(ptr %self1.i, !1665, !DIExpression(), !2153)
    #dbg_declare(ptr poison, !1675, !DIExpression(), !2155)
    #dbg_declare(ptr %self1.i, !1686, !DIExpression(), !2156)
    #dbg_value(i64 0, !1694, !DIExpression(), !2158)
    #dbg_value(i64 0, !1702, !DIExpression(), !2159)
    #dbg_value(i64 0, !1727, !DIExpression(), !2161)
    #dbg_declare(ptr undef, !1695, !DIExpression(), !2163)
    #dbg_declare(ptr undef, !1724, !DIExpression(), !2164)
    #dbg_declare(ptr undef, !1746, !DIExpression(), !2165)
    #dbg_value(ptr %self1.i, !1723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2159)
    #dbg_value(ptr %self1.i, !1745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2161)
    #dbg_value(i64 65536, !1723, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2159)
    #dbg_value(i64 65536, !1745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2161)
    #dbg_value(ptr %_5.sroa.5.0.self1.sroa_idx.i, !1747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2166)
    #dbg_value(i64 65536, !1747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2166)
    #dbg_value(i64 0, !1760, !DIExpression(), !2167)
    #dbg_value(ptr %_5.sroa.5.0.self1.sroa_idx.i, !1775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2167)
    #dbg_value(i64 65536, !1775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2167)
    #dbg_value(ptr %self1.i, !1774, !DIExpression(), !2167)
    #dbg_value(ptr %self1.i, !1789, !DIExpression(), !2169)
    #dbg_value(i64 1, !1799, !DIExpression(), !2171)
  br label %vector.body, !dbg !2173
