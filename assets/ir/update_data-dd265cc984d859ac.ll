; ModuleID = 'update_data.697fbe0823d23569-cgu.0'
source_filename = "update_data.697fbe0823d23569-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; update_data::update
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_ZN11update_data6update17h5964edf586a94d9aE(ptr noalias noundef nonnull align 8 %state.0, i64 noundef %state.1) unnamed_addr #0 !dbg !7 {
start:
    #dbg_value(ptr undef, !49, !DIExpression(), !59)
    #dbg_value(ptr undef, !58, !DIExpression(), !59)
    #dbg_value(ptr undef, !82, !DIExpression(), !89)
    #dbg_value(ptr %state.0, !22, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !90)
    #dbg_value(ptr %state.0, !91, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !98)
    #dbg_value(ptr %state.0, !100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !105)
    #dbg_value(ptr %state.0, !107, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !117)
    #dbg_value(i64 %state.1, !22, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !90)
    #dbg_value(i64 %state.1, !91, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !98)
    #dbg_value(i64 %state.1, !100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !105)
    #dbg_value(i64 %state.1, !107, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !117)
    #dbg_value(i64 1, !119, !DIExpression(), !126)
    #dbg_value(i64 %state.1, !111, !DIExpression(), !128)
    #dbg_value(i64 %state.1, !129, !DIExpression(), !138)
    #dbg_value(ptr %state.0, !113, !DIExpression(), !140)
    #dbg_value(ptr %state.0, !137, !DIExpression(), !138)
  %end_or_len = getelementptr inbounds nuw i64, ptr %state.0, i64 %state.1, !dbg !141
    #dbg_value(ptr %state.0, !23, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !142)
    #dbg_value(ptr %end_or_len, !23, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !142)
    #dbg_value(ptr %state.0, !83, !DIExpression(), !143)
    #dbg_value(ptr %state.0, !125, !DIExpression(), !126)
    #dbg_value(ptr %end_or_len, !84, !DIExpression(), !144)
  %_217 = icmp eq i64 %state.1, 0, !dbg !145
  br i1 %_217, label %bb3, label %bb4, !dbg !60

bb4:                                              ; preds = %start, %bb4
  %iter.sroa.0.08 = phi ptr [ %_31, %bb4 ], [ %state.0, %start ]
    #dbg_value(ptr %iter.sroa.0.08, !23, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !142)
  %_31 = getelementptr inbounds nuw i8, ptr %iter.sroa.0.08, i64 8, !dbg !146
    #dbg_value(ptr %_31, !23, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !142)
    #dbg_value(ptr %iter.sroa.0.08, !47, !DIExpression(), !147)
  %_8 = load i64, ptr %iter.sroa.0.08, align 8, !dbg !148, !noundef !20
    #dbg_value(i64 %_8, !149, !DIExpression(), !163)
    #dbg_value(i64 %_8, !159, !DIExpression(), !165)
    #dbg_value(i64 1, !161, !DIExpression(), !166)
    #dbg_value(i32 1, !158, !DIExpression(), !163)
  %_17.0.i = mul i64 %_8, %_8, !dbg !167
    #dbg_value(i32 poison, !158, !DIExpression(), !163)
    #dbg_value(i64 %_17.0.i, !159, !DIExpression(), !165)
  store i64 %_17.0.i, ptr %iter.sroa.0.08, align 8, !dbg !168
    #dbg_value(ptr undef, !82, !DIExpression(), !89)
    #dbg_value(ptr %_31, !83, !DIExpression(), !143)
    #dbg_value(ptr %_31, !125, !DIExpression(), !126)
    #dbg_value(ptr %end_or_len, !84, !DIExpression(), !144)
    #dbg_value(ptr undef, !58, !DIExpression(), !59)
    #dbg_value(ptr undef, !49, !DIExpression(), !59)
  %_21 = icmp eq ptr %_31, %end_or_len, !dbg !145
  br i1 %_21, label %bb3, label %bb4, !dbg !60

bb3:                                              ; preds = %bb4, %start
  ret void, !dbg !169
}

; update_data::assign
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN11update_data6assign17h61a8f40ca2fcc4f7E(ptr noalias nocapture noundef writeonly align 8 dereferenceable(200) initializes((0, 200)) %state, ptr noalias nocapture noundef readonly align 8 dereferenceable(200) %data) unnamed_addr #1 !dbg !170 {
start:
    #dbg_value(ptr %state, !179, !DIExpression(), !181)
    #dbg_value(ptr %data, !180, !DIExpression(), !181)
    #dbg_value(ptr %state, !182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !206)
    #dbg_value(i64 25, !182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !206)
    #dbg_value(ptr %data, !205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !206)
    #dbg_value(i64 25, !205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !206)
    #dbg_value(i64 25, !208, !DIExpression(), !217)
    #dbg_value(ptr %data, !215, !DIExpression(), !217)
    #dbg_value(ptr %state, !216, !DIExpression(), !217)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %state, ptr noundef nonnull readonly align 8 dereferenceable(200) %data, i64 200, i1 false), !dbg !219, !alias.scope !220
  ret void, !dbg !224
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.dbg.cu = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{!"rustc version 1.88.0 (6b00bc388 2025-06-23)"}
!5 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !6, producer: "clang LLVM (rustc version 1.88.0 (6b00bc388 2025-06-23))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "crates/update-data/src/lib.rs/@/update_data.697fbe0823d23569-cgu.0", directory: "/path/perf-case-study")
!7 = distinct !DISubprogram(name: "update", linkageName: "_ZN11update_data6update17h5964edf586a94d9aE", scope: !9, file: !8, line: 3, type: !10, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !20, retainedNodes: !21)
!8 = !DIFile(filename: "crates/update-data/src/lib.rs", directory: "/path/perf-case-study", checksumkind: CSK_MD5, checksum: "205533d229bedbb903e1810d12c7f3ce")
!9 = !DINamespace(name: "update_data", scope: null)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [u64]", file: !13, size: 128, align: 64, elements: !14, templateParams: !20, identifier: "75e4b4267ae329175f87d6f5f28c5d25")
!13 = !DIFile(filename: "<unknown>", directory: "")
!14 = !{!15, !18}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !12, file: !13, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64, dwarfAddressSpace: 0)
!17 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !12, file: !13, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!20 = !{}
!21 = !{!22, !23, !47}
!22 = !DILocalVariable(name: "state", arg: 1, scope: !7, file: !8, line: 3, type: !12)
!23 = !DILocalVariable(name: "iter", scope: !24, file: !8, line: 4, type: !25, align: 64)
!24 = distinct !DILexicalBlock(scope: !7, file: !8, line: 4, column: 5)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "IterMut<u64>", scope: !26, file: !13, size: 128, align: 64, flags: DIFlagPublic, elements: !29, templateParams: !37, identifier: "39129f9e7c5f1e084010e8f80cbf3073")
!26 = !DINamespace(name: "iter", scope: !27)
!27 = !DINamespace(name: "slice", scope: !28)
!28 = !DINamespace(name: "core", scope: null)
!29 = !{!30, !39, !41}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !25, file: !13, baseType: !31, size: 64, align: 64, flags: DIFlagPrivate)
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u64>", scope: !32, file: !13, size: 64, align: 64, flags: DIFlagPublic, elements: !34, templateParams: !37, identifier: "ad9a0586d1540232666e307b4d75104e")
!32 = !DINamespace(name: "non_null", scope: !33)
!33 = !DINamespace(name: "ptr", scope: !28)
!34 = !{!35}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !31, file: !13, baseType: !36, size: 64, align: 64, flags: DIFlagPrivate)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u64", baseType: !17, size: 64, align: 64, dwarfAddressSpace: 0)
!37 = !{!38}
!38 = !DITemplateTypeParameter(name: "T", type: !17)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "end_or_len", scope: !25, file: !13, baseType: !40, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut u64", baseType: !17, size: 64, align: 64, dwarfAddressSpace: 0)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !25, file: !13, baseType: !42, align: 8, offset: 128, flags: DIFlagPrivate)
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&mut u64>", scope: !43, file: !13, align: 8, flags: DIFlagPublic, elements: !20, templateParams: !44, identifier: "e439bcae33b4194bcc49ffdc3b3320e0")
!43 = !DINamespace(name: "marker", scope: !28)
!44 = !{!45}
!45 = !DITemplateTypeParameter(name: "T", type: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut u64", baseType: !17, size: 64, align: 64, dwarfAddressSpace: 0)
!47 = !DILocalVariable(name: "ele", scope: !48, file: !8, line: 4, type: !46, align: 64)
!48 = distinct !DILexicalBlock(scope: !24, file: !8, line: 4, column: 22)
!49 = !DILocalVariable(name: "other", arg: 2, scope: !50, file: !51, line: 1619, type: !56)
!50 = distinct !DISubprogram(name: "eq<u64>", linkageName: "_ZN78_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf1d7e8c92a71b88aE", scope: !52, file: !51, line: 1619, type: !53, scopeLine: 1619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !37, retainedNodes: !57)
!51 = !DIFile(filename: "/$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/non_null.rs", directory: "", checksumkind: CSK_MD5, checksum: "4581535087e72f009ff006c7c6f156b9")
!52 = !DINamespace(name: "{impl#14}", scope: !32)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !56, !56}
!55 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::ptr::non_null::NonNull<u64>", baseType: !31, size: 64, align: 64, dwarfAddressSpace: 0)
!57 = !{!58, !49}
!58 = !DILocalVariable(name: "self", arg: 1, scope: !50, file: !51, line: 1619, type: !56)
!59 = !DILocation(line: 0, scope: !50, inlinedAt: !60)
!60 = !DILocation(line: 179, column: 28, scope: !61, inlinedAt: !87)
!61 = distinct !DILexicalBlock(scope: !63, file: !62, line: 161, column: 17)
!62 = !DIFile(filename: "/$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/iter/macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "330935a329cc74f5254abe12d5a6c8e3")
!63 = distinct !DILexicalBlock(scope: !64, file: !62, line: 160, column: 17)
!64 = distinct !DISubprogram(name: "next<u64>", linkageName: "_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7b3e7d1c9e816f0E", scope: !65, file: !62, line: 156, type: !66, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !37, retainedNodes: !81)
!65 = !DINamespace(name: "{impl#190}", scope: !26)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !80}
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&mut u64>", scope: !69, file: !13, size: 64, align: 64, flags: DIFlagPublic, elements: !70, templateParams: !20, identifier: "ccfba3609da2243d3e0e0a9271a6a262")
!69 = !DINamespace(name: "option", scope: !28)
!70 = !{!71}
!71 = !DICompositeType(tag: DW_TAG_variant_part, scope: !68, file: !13, size: 64, align: 64, elements: !72, templateParams: !20, identifier: "cf2efaed779c1206f2ed97f71bd6595c", discriminator: !79)
!72 = !{!73, !75}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !71, file: !13, baseType: !74, size: 64, align: 64, extraData: i64 0)
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !68, file: !13, size: 64, align: 64, flags: DIFlagPublic, elements: !20, templateParams: !44, identifier: "407916023ff9e75c9d06387b5bb5f73")
!75 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !71, file: !13, baseType: !76, size: 64, align: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !68, file: !13, size: 64, align: 64, flags: DIFlagPublic, elements: !77, templateParams: !44, identifier: "5d8415c11d98a6ac7044d43737b1d68f")
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !76, file: !13, baseType: !46, size: 64, align: 64, flags: DIFlagPublic)
!79 = !DIDerivedType(tag: DW_TAG_member, scope: !68, file: !13, baseType: !17, size: 64, align: 64, flags: DIFlagArtificial)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::iter::IterMut<u64>", baseType: !25, size: 64, align: 64, dwarfAddressSpace: 0)
!81 = !{!82, !83, !84, !85}
!82 = !DILocalVariable(name: "self", arg: 1, scope: !64, file: !62, line: 156, type: !80)
!83 = !DILocalVariable(name: "ptr", scope: !63, file: !62, line: 160, type: !31, align: 64)
!84 = !DILocalVariable(name: "end_or_len", scope: !61, file: !62, line: 161, type: !40, align: 64)
!85 = !DILocalVariable(name: "len", scope: !86, file: !62, line: 166, type: !19, align: 64)
!86 = distinct !DILexicalBlock(scope: !61, file: !62, line: 166, column: 25)
!87 = !DILocation(line: 4, column: 16, scope: !88)
!88 = !DILexicalBlockFile(scope: !24, file: !8, discriminator: 2)
!89 = !DILocation(line: 0, scope: !64, inlinedAt: !87)
!90 = !DILocation(line: 0, scope: !7)
!91 = !DILocalVariable(name: "self", arg: 1, scope: !92, file: !93, line: 35, type: !12)
!92 = distinct !DISubprogram(name: "into_iter<u64>", linkageName: "_ZN4core5slice4iter95_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$mut$u20$$u5b$T$u5d$$GT$9into_iter17hb707e18b4326128dE", scope: !94, file: !93, line: 35, type: !95, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !37, retainedNodes: !97)
!93 = !DIFile(filename: "/$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/iter.rs", directory: "", checksumkind: CSK_MD5, checksum: "215db49d603ba4b7da5c29f81e6e67eb")
!94 = !DINamespace(name: "{impl#2}", scope: !26)
!95 = !DISubroutineType(types: !96)
!96 = !{!25, !12}
!97 = !{!91}
!98 = !DILocation(line: 0, scope: !92, inlinedAt: !99)
!99 = !DILocation(line: 4, column: 16, scope: !7)
!100 = !DILocalVariable(name: "self", arg: 1, scope: !101, file: !102, line: 1049, type: !12)
!101 = distinct !DISubprogram(name: "iter_mut<u64>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8iter_mut17h0e67942cfc3adffbE", scope: !103, file: !102, line: 1049, type: !95, scopeLine: 1049, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !37, retainedNodes: !104)
!102 = !DIFile(filename: "/$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "2d918a6f3598a09ed04bec293b0c534b")
!103 = !DINamespace(name: "{impl#0}", scope: !27)
!104 = !{!100}
!105 = !DILocation(line: 0, scope: !101, inlinedAt: !106)
!106 = !DILocation(line: 36, column: 14, scope: !92, inlinedAt: !99)
!107 = !DILocalVariable(name: "slice", arg: 1, scope: !108, file: !93, line: 221, type: !12)
!108 = distinct !DISubprogram(name: "new<u64>", linkageName: "_ZN4core5slice4iter16IterMut$LT$T$GT$3new17h9fba7ca5cb1c28bdE", scope: !25, file: !93, line: 221, type: !95, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !37, declaration: !109, retainedNodes: !110)
!109 = !DISubprogram(name: "new<u64>", linkageName: "_ZN4core5slice4iter16IterMut$LT$T$GT$3new17h9fba7ca5cb1c28bdE", scope: !25, file: !93, line: 221, type: !95, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !37)
!110 = !{!107, !111, !113, !115}
!111 = !DILocalVariable(name: "len", scope: !112, file: !93, line: 222, type: !19, align: 64)
!112 = distinct !DILexicalBlock(scope: !108, file: !93, line: 222, column: 9)
!113 = !DILocalVariable(name: "ptr", scope: !114, file: !93, line: 223, type: !31, align: 64)
!114 = distinct !DILexicalBlock(scope: !112, file: !93, line: 223, column: 9)
!115 = !DILocalVariable(name: "end_or_len", scope: !116, file: !93, line: 241, type: !40, align: 64)
!116 = distinct !DILexicalBlock(scope: !114, file: !93, line: 241, column: 13)
!117 = !DILocation(line: 0, scope: !108, inlinedAt: !118)
!118 = !DILocation(line: 1050, column: 9, scope: !101, inlinedAt: !106)
!119 = !DILocalVariable(name: "count", scope: !120, file: !51, line: 608, type: !19, align: 64)
!120 = distinct !DISubprogram(name: "add<u64>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3add17he5450505db604fa8E", scope: !31, file: !51, line: 608, type: !121, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !37, declaration: !123, retainedNodes: !124)
!121 = !DISubroutineType(types: !122)
!122 = !{!31, !31, !19}
!123 = !DISubprogram(name: "add<u64>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3add17he5450505db604fa8E", scope: !31, file: !51, line: 608, type: !121, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !37)
!124 = !{!125, !119}
!125 = !DILocalVariable(name: "self", arg: 1, scope: !120, file: !51, line: 608, type: !31)
!126 = !DILocation(line: 0, scope: !120, inlinedAt: !127)
!127 = !DILocation(line: 184, column: 40, scope: !61, inlinedAt: !87)
!128 = !DILocation(line: 0, scope: !112, inlinedAt: !118)
!129 = !DILocalVariable(name: "count", arg: 2, scope: !130, file: !131, line: 1022, type: !19)
!130 = distinct !DISubprogram(name: "add<u64>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h35a738a2d1c8212fE", scope: !132, file: !131, line: 1022, type: !134, scopeLine: 1022, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !37, retainedNodes: !136)
!131 = !DIFile(filename: "/$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mut_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "135dbc432f18556357bf189d39336fde")
!132 = !DINamespace(name: "{impl#0}", scope: !133)
!133 = !DINamespace(name: "mut_ptr", scope: !33)
!134 = !DISubroutineType(types: !135)
!135 = !{!40, !40, !19}
!136 = !{!137, !129}
!137 = !DILocalVariable(name: "self", arg: 1, scope: !130, file: !131, line: 1022, type: !40)
!138 = !DILocation(line: 0, scope: !130, inlinedAt: !139)
!139 = !DILocation(line: 242, column: 82, scope: !114, inlinedAt: !118)
!140 = !DILocation(line: 0, scope: !114, inlinedAt: !118)
!141 = !DILocation(line: 1056, column: 18, scope: !130, inlinedAt: !139)
!142 = !DILocation(line: 0, scope: !24)
!143 = !DILocation(line: 0, scope: !63, inlinedAt: !87)
!144 = !DILocation(line: 0, scope: !61, inlinedAt: !87)
!145 = !DILocation(line: 1620, column: 9, scope: !50, inlinedAt: !60)
!146 = !DILocation(line: 616, column: 37, scope: !120, inlinedAt: !127)
!147 = !DILocation(line: 0, scope: !48)
!148 = !DILocation(line: 5, column: 16, scope: !48)
!149 = !DILocalVariable(name: "self", arg: 1, scope: !150, file: !151, line: 3073, type: !17)
!150 = distinct !DISubprogram(name: "pow", linkageName: "_ZN4core3num21_$LT$impl$u20$u64$GT$3pow17hf541ceecb13cb9c5E", scope: !152, file: !151, line: 3073, type: !154, scopeLine: 3073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !20, retainedNodes: !157)
!151 = !DIFile(filename: "/$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "808b6d8f4f9247ae56e793f1af19e2e9")
!152 = !DINamespace(name: "{impl#9}", scope: !153)
!153 = !DINamespace(name: "num", scope: !28)
!154 = !DISubroutineType(types: !155)
!155 = !{!17, !17, !156}
!156 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!157 = !{!149, !158, !159, !161}
!158 = !DILocalVariable(name: "exp", arg: 2, scope: !150, file: !151, line: 3073, type: !156)
!159 = !DILocalVariable(name: "base", scope: !160, file: !151, line: 3077, type: !17, align: 64)
!160 = distinct !DILexicalBlock(scope: !150, file: !151, line: 3077, column: 13)
!161 = !DILocalVariable(name: "acc", scope: !162, file: !151, line: 3078, type: !17, align: 64)
!162 = distinct !DILexicalBlock(scope: !160, file: !151, line: 3078, column: 13)
!163 = !DILocation(line: 0, scope: !150, inlinedAt: !164)
!164 = distinct !DILocation(line: 5, column: 16, scope: !48)
!165 = !DILocation(line: 0, scope: !160, inlinedAt: !164)
!166 = !DILocation(line: 0, scope: !162, inlinedAt: !164)
!167 = !DILocation(line: 3086, column: 28, scope: !162, inlinedAt: !164)
!168 = !DILocation(line: 5, column: 9, scope: !48)
!169 = !DILocation(line: 7, column: 2, scope: !7)
!170 = distinct !DISubprogram(name: "assign", linkageName: "_ZN11update_data6assign17h61a8f40ca2fcc4f7E", scope: !9, file: !8, line: 10, type: !171, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !20, retainedNodes: !178)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !173, !177}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut [u64; 25]", baseType: !174, size: 64, align: 64, dwarfAddressSpace: 0)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 1600, align: 64, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 25, lowerBound: 0)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[u64; 25]", baseType: !174, size: 64, align: 64, dwarfAddressSpace: 0)
!178 = !{!179, !180}
!179 = !DILocalVariable(name: "state", arg: 1, scope: !170, file: !8, line: 10, type: !173)
!180 = !DILocalVariable(name: "data", arg: 2, scope: !170, file: !8, line: 10, type: !177)
!181 = !DILocation(line: 0, scope: !170)
!182 = !DILocalVariable(name: "self", arg: 1, scope: !183, file: !102, line: 3801, type: !12)
!183 = distinct !DISubprogram(name: "copy_from_slice<u64>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb644c2bc83d610bdE", scope: !103, file: !102, line: 3801, type: !184, scopeLine: 3801, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !37, retainedNodes: !204)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !12, !186, !190}
!186 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[u64]", file: !13, size: 128, align: 64, elements: !187, templateParams: !20, identifier: "e31591d84c9ef1b169c1a3318b8e9b52")
!187 = !{!188, !189}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !186, file: !13, baseType: !16, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !186, file: !13, baseType: !19, size: 64, align: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::panic::location::Location", baseType: !191, size: 64, align: 64, dwarfAddressSpace: 0)
!191 = !DICompositeType(tag: DW_TAG_structure_type, name: "Location", scope: !192, file: !13, size: 192, align: 64, flags: DIFlagPublic, elements: !194, templateParams: !20, identifier: "f810f159f688041f878ac2315b306c2")
!192 = !DINamespace(name: "location", scope: !193)
!193 = !DINamespace(name: "panic", scope: !28)
!194 = !{!195, !202, !203}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !191, file: !13, baseType: !196, size: 128, align: 64, flags: DIFlagPrivate)
!196 = !DICompositeType(tag: DW_TAG_structure_type, name: "&str", file: !13, size: 128, align: 64, elements: !197, templateParams: !20, identifier: "9277eecd40495f85161460476aacc992")
!197 = !{!198, !201}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !196, file: !13, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64, dwarfAddressSpace: 0)
!200 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !196, file: !13, baseType: !19, size: 64, align: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !191, file: !13, baseType: !156, size: 32, align: 32, offset: 128, flags: DIFlagPrivate)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !191, file: !13, baseType: !156, size: 32, align: 32, offset: 160, flags: DIFlagPrivate)
!204 = !{!182, !205}
!205 = !DILocalVariable(name: "src", arg: 2, scope: !183, file: !102, line: 3801, type: !186)
!206 = !DILocation(line: 0, scope: !183, inlinedAt: !207)
!207 = distinct !DILocation(line: 11, column: 5, scope: !170)
!208 = !DILocalVariable(name: "count", arg: 3, scope: !209, file: !210, line: 3727, type: !19)
!209 = distinct !DISubprogram(name: "copy_nonoverlapping<u64>", linkageName: "_ZN4core10intrinsics19copy_nonoverlapping17h751fba96dff83808E", scope: !211, file: !210, line: 3727, type: !212, scopeLine: 3727, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !37, retainedNodes: !214)
!210 = !DIFile(filename: "/$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "49afd57ce0629b2532f1104468e9c953")
!211 = !DINamespace(name: "intrinsics", scope: !28)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !36, !40, !19}
!214 = !{!215, !216, !208}
!215 = !DILocalVariable(name: "src", arg: 1, scope: !209, file: !210, line: 3727, type: !36)
!216 = !DILocalVariable(name: "dst", arg: 2, scope: !209, file: !210, line: 3727, type: !40)
!217 = !DILocation(line: 0, scope: !209, inlinedAt: !218)
!218 = distinct !DILocation(line: 3827, column: 13, scope: !183, inlinedAt: !207)
!219 = !DILocation(line: 3753, column: 14, scope: !209, inlinedAt: !218)
!220 = !{!221, !223}
!221 = distinct !{!221, !222, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb644c2bc83d610bdE: %self.0"}
!222 = distinct !{!222, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb644c2bc83d610bdE"}
!223 = distinct !{!223, !222, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb644c2bc83d610bdE: %src.0"}
!224 = !DILocation(line: 12, column: 2, scope: !170)
