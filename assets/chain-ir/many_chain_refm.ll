; perf_case::chain::many_chain_refm
; Function Attrs: noinline nonlazybind uwtable
define noundef i64 @_ZN9perf_case5chain15many_chain_refm17ha6a6629d685d517bE(ptr noalias nocapture noundef align 8 dereferenceable(524288) %arg) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2197 {
start:
  %self1.i = alloca [524304 x i8], align 8
    #dbg_declare(ptr %arg, !2199, !DIExpression(), !2200)
    #dbg_value(ptr %arg, !1604, !DIExpression(), !2201)
    #dbg_value(ptr %arg, !1587, !DIExpression(), !2203)
; call update_data::update
  tail call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %arg, i64 noundef 65536), !dbg !2205
    #dbg_value(ptr %arg, !1604, !DIExpression(), !2206)
    #dbg_value(ptr %arg, !1587, !DIExpression(), !2208)
; call update_data::update
  tail call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %arg, i64 noundef 65536), !dbg !2210
    #dbg_value(ptr %arg, !1604, !DIExpression(), !2211)
    #dbg_value(ptr %arg, !1587, !DIExpression(), !2213)
; call update_data::update
  tail call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %arg, i64 noundef 65536), !dbg !2215
    #dbg_value(ptr %arg, !1604, !DIExpression(), !2216)
    #dbg_value(ptr %arg, !1587, !DIExpression(), !2218)
; call update_data::update
  tail call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %arg, i64 noundef 65536), !dbg !2220
    #dbg_value(ptr %arg, !1604, !DIExpression(), !2221)
    #dbg_value(ptr %arg, !1587, !DIExpression(), !2223)
; call update_data::update
  tail call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %arg, i64 noundef 65536), !dbg !2225
    #dbg_value(ptr %arg, !1604, !DIExpression(), !2226)
    #dbg_value(ptr %arg, !1587, !DIExpression(), !2228)
; call update_data::update
  tail call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %arg, i64 noundef 65536), !dbg !2230
    #dbg_value(ptr %arg, !1604, !DIExpression(), !2231)
    #dbg_value(ptr %arg, !1587, !DIExpression(), !2233)
; call update_data::update
  tail call void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 dereferenceable(524288) %arg, i64 noundef 65536), !dbg !2235
  %_5.sroa.5.0.self1.sroa_idx.i = getelementptr inbounds nuw i8, ptr %self1.i, i64 16, !dbg !2236
  call void @llvm.lifetime.start.p0(i64 524304, ptr nonnull %self1.i), !dbg !2239, !noalias !2240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %_5.sroa.5.0.self1.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(524288) %arg, i64 524288, i1 false), !dbg !2243
    #dbg_declare(ptr poison, !1618, !DIExpression(), !2244)
    #dbg_declare(ptr %self1.i, !1620, !DIExpression(), !2245)
    #dbg_declare(ptr %self1.i, !1665, !DIExpression(), !2247)
    #dbg_declare(ptr poison, !1675, !DIExpression(), !2249)
    #dbg_declare(ptr %self1.i, !1686, !DIExpression(), !2250)
    #dbg_value(i64 0, !1694, !DIExpression(), !2252)
    #dbg_value(i64 0, !1702, !DIExpression(), !2253)
    #dbg_value(i64 0, !1727, !DIExpression(), !2255)
    #dbg_declare(ptr undef, !1695, !DIExpression(), !2257)
    #dbg_declare(ptr undef, !1724, !DIExpression(), !2258)
    #dbg_declare(ptr undef, !1746, !DIExpression(), !2259)
    #dbg_value(ptr %self1.i, !1723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2253)
    #dbg_value(ptr %self1.i, !1745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2255)
    #dbg_value(i64 65536, !1723, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2253)
    #dbg_value(i64 65536, !1745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2255)
    #dbg_value(ptr %_5.sroa.5.0.self1.sroa_idx.i, !1747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2260)
    #dbg_value(i64 65536, !1747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2260)
    #dbg_value(i64 0, !1760, !DIExpression(), !2261)
    #dbg_value(ptr %_5.sroa.5.0.self1.sroa_idx.i, !1775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2261)
    #dbg_value(i64 65536, !1775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2261)
    #dbg_value(ptr %self1.i, !1774, !DIExpression(), !2261)
    #dbg_value(ptr %self1.i, !1789, !DIExpression(), !2263)
    #dbg_value(i64 1, !1799, !DIExpression(), !2265)
  br label %vector.body, !dbg !2267
