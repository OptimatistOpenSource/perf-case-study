; zero_uninit::main
; Function Attrs: nonlazybind uwtable
define internal void @_ZN11zero_uninit4main17ha45f542b9d94795dE() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2526 {
start:
  %0 = alloca [48 x i8], align 8
  %1 = alloca [16 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %3 = alloca [32 x i8], align 8
  %4 = alloca [48 x i8], align 8
  %5 = alloca [8 x i8], align 8
  %6 = alloca [16 x i8], align 8
  %_13 = alloca [8 x i8], align 8
  %_10 = alloca [16 x i8], align 8
  %_6 = alloca [48 x i8], align 8
  %tmp = alloca [200 x i8], align 8
  %arr = alloca [200 x i8], align 8
    #dbg_declare(ptr %arr, !2530, !DIExpression(), !2536)
    #dbg_declare(ptr %tmp, !2532, !DIExpression(), !2537)
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %arr), !dbg !2538
  store <4 x i64> splat (i64 1), ptr %arr, align 8
  %7 = getelementptr inbounds nuw i8, ptr %arr, i64 32
  store <4 x i64> splat (i64 1), ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %arr, i64 64
  store <4 x i64> splat (i64 1), ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %arr, i64 96
  store <4 x i64> splat (i64 1), ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %arr, i64 128
  store <4 x i64> splat (i64 1), ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %arr, i64 160
  store <4 x i64> splat (i64 1), ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %arr, i64 192
  store i64 1, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %tmp), !dbg !2539
; call perf_case::zero_init::uninit_it
  call fastcc void @_ZN9perf_case9zero_init9uninit_it17h1ab68d0cbbeaf12bE(ptr noalias nocapture noundef nonnull align 8 dereferenceable(200) %tmp, ptr noalias noundef nonnull readonly align 8 dereferenceable(200) %arr), !dbg !2540
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_6), !dbg !2537
    #dbg_value(ptr @alloc_e26d7c56628724ed90105812ed3ee3d0, !2541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2641)
    #dbg_value(i64 2, !2541, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2641)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_10), !dbg !2537
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_13), !dbg !2537
  store ptr %tmp, ptr %_13, align 8, !dbg !2537
  store ptr %_13, ptr %_10, align 8, !dbg !2537
  %_11.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %_10, i64 8, !dbg !2537
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h692a40d4f2c6b198E", ptr %_11.sroa.4.0..sroa_idx, align 8, !dbg !2537
    #dbg_value(ptr %_10, !2639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2641)
    #dbg_value(i64 1, !2639, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2641)
    #dbg_value(ptr @anon.9ba542688b8e296d0080271b2a3eb5fb.254, !2640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2641)
    #dbg_value(i64 1, !2640, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2641)
  store ptr @alloc_e26d7c56628724ed90105812ed3ee3d0, ptr %_6, align 8, !dbg !2644
  %13 = getelementptr inbounds nuw i8, ptr %_6, i64 8, !dbg !2644
  store i64 2, ptr %13, align 8, !dbg !2644
  %14 = getelementptr inbounds nuw i8, ptr %_6, i64 32, !dbg !2644
  store ptr @anon.9ba542688b8e296d0080271b2a3eb5fb.254, ptr %14, align 8, !dbg !2644
  %15 = getelementptr inbounds nuw i8, ptr %_6, i64 40, !dbg !2644
  store i64 1, ptr %15, align 8, !dbg !2644
  %16 = getelementptr inbounds nuw i8, ptr %_6, i64 16, !dbg !2644
  store ptr %_10, ptr %16, align 8, !dbg !2644
  %17 = getelementptr inbounds nuw i8, ptr %_6, i64 24, !dbg !2644
  store i64 1, ptr %17, align 8, !dbg !2644
  call void @llvm.experimental.noalias.scope.decl(metadata !2645), !dbg !2537
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6), !noalias !2645
  store ptr @anon.9ba542688b8e296d0080271b2a3eb5fb.424, ptr %6, align 8, !noalias !2648
  %18 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 6, ptr %18, align 8, !noalias !2648
  call void @llvm.experimental.noalias.scope.decl(metadata !2651), !dbg !2654
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2), !dbg !2666, !noalias !2670
  %19 = load i64, ptr @_ZN3std6thread7current2id2ID17h7db2101f282e5fa4E.0, align 8, !dbg !2671, !noalias !2696, !noundef !32
  %20 = icmp eq i64 %19, 0, !dbg !2699
  br i1 %20, label %21, label %33, !dbg !2702
