; chain_move::main
; Function Attrs: nonlazybind uwtable
define internal void @_ZN10chain_move4main17ha815460961a1069dE() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !401 {
start:
  %0 = alloca [48 x i8], align 8
  %1 = alloca [16 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %3 = alloca [32 x i8], align 8
  %4 = alloca [48 x i8], align 8
  %5 = alloca [8 x i8], align 8
  %6 = alloca [16 x i8], align 8
  %_12 = alloca [8 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %_5 = alloca [48 x i8], align 8
  %tmp = alloca [8 x i8], align 8
  %state = alloca [524288 x i8], align 8
    #dbg_declare(ptr %state, !405, !DIExpression(), !421)
    #dbg_declare(ptr %tmp, !417, !DIExpression(), !422)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %state, i8 0, i64 524288, i1 false), !dbg !423
; call perf_case::chain::many_chain
  %a = call fastcc noundef i64 @_ZN9perf_case5chain10many_chain17he5fd9c9a3b3a10efE(ptr noalias nocapture noundef nonnull align 8 dereferenceable(524288) %state), !dbg !430
    #dbg_value(i64 %a, !415, !DIExpression(), !431)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp), !dbg !432
  store i64 %a, ptr %tmp, align 8, !dbg !432
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5), !dbg !422
    #dbg_value(ptr @alloc_c5fd2d10fdca398f6a8c3ae6bc7742c2, !433, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !536)
    #dbg_value(i64 2, !433, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !536)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_9), !dbg !422
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_12), !dbg !422
  store ptr %tmp, ptr %_12, align 8, !dbg !422
  store ptr %_12, ptr %_9, align 8, !dbg !422
  %_10.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %_9, i64 8, !dbg !422
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf29f3317fb9eadadE", ptr %_10.sroa.4.0..sroa_idx, align 8, !dbg !422
    #dbg_value(ptr %_9, !534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !536)
    #dbg_value(i64 1, !534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !536)
    #dbg_value(ptr @anon.9ba542688b8e296d0080271b2a3eb5fb.254, !535, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !536)
    #dbg_value(i64 1, !535, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !536)
  store ptr @alloc_c5fd2d10fdca398f6a8c3ae6bc7742c2, ptr %_5, align 8, !dbg !539
  %7 = getelementptr inbounds nuw i8, ptr %_5, i64 8, !dbg !539
  store i64 2, ptr %7, align 8, !dbg !539
  %8 = getelementptr inbounds nuw i8, ptr %_5, i64 32, !dbg !539
  store ptr @anon.9ba542688b8e296d0080271b2a3eb5fb.254, ptr %8, align 8, !dbg !539
  %9 = getelementptr inbounds nuw i8, ptr %_5, i64 40, !dbg !539
  store i64 1, ptr %9, align 8, !dbg !539
  %10 = getelementptr inbounds nuw i8, ptr %_5, i64 16, !dbg !539
  store ptr %_9, ptr %10, align 8, !dbg !539
  %11 = getelementptr inbounds nuw i8, ptr %_5, i64 24, !dbg !539
  store i64 1, ptr %11, align 8, !dbg !539
  call void @llvm.experimental.noalias.scope.decl(metadata !540), !dbg !422
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6), !noalias !540
  store ptr @anon.9ba542688b8e296d0080271b2a3eb5fb.424, ptr %6, align 8, !noalias !543
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 6, ptr %12, align 8, !noalias !543
  call void @llvm.experimental.noalias.scope.decl(metadata !546), !dbg !549
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2), !dbg !561, !noalias !565
  %13 = load i64, ptr @_ZN3std6thread7current2id2ID17h7db2101f282e5fa4E.0, align 8, !dbg !566, !noalias !591, !noundef !32
  %14 = icmp eq i64 %13, 0, !dbg !594
  br i1 %14, label %15, label %27, !dbg !599
