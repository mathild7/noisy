; ModuleID = '/home/hildeb47/proj/ECE1373_GhostSynth/mods/noisy/noise/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream.0" = type { float }

@state = internal unnamed_addr global i32 1, align 4 ; [#uses=3 type=i32*]
@noisy.str = internal unnamed_addr constant [6 x i8] c"noisy\00" ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]

; [#uses=0]
define void @noisy(%"class.hls::stream.0"* %out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @noisy.str) nounwind
  %tmp.2 = alloca float, align 4                  ; [#uses=2 type=float*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %out}, i64 0, metadata !86), !dbg !87 ; [debug line = 6:18] [debug variable = out]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.0"* %out, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !88 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !90 ; [debug line = 9:1]
  br label %1, !dbg !91                           ; [debug line = 14:15]

; <label>:1                                       ; preds = %._crit_edge, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %._crit_edge ]  ; [#uses=2 type=i32]
  %exitcond = icmp eq i32 %i, 16, !dbg !91        ; [#uses=1 type=i1] [debug line = 14:15]
  br i1 %exitcond, label %2, label %._crit_edge, !dbg !91 ; [debug line = 14:15]

._crit_edge:                                      ; preds = %1
  %state.load.1 = load i32* @state, align 4, !dbg !93 ; [#uses=1 type=i32] [debug line = 15:3]
  %tmp.4 = shl i32 %state.load.1, 1, !dbg !93     ; [#uses=3 type=i32] [debug line = 15:3]
  %tmp.5 = and i32 %tmp.4, 65536, !dbg !95        ; [#uses=1 type=i32] [debug line = 16:3]
  %tmp.6 = icmp eq i32 %tmp.5, 0, !dbg !95        ; [#uses=1 type=i1] [debug line = 16:3]
  %tmp.7 = xor i32 %tmp.4, 69643, !dbg !96        ; [#uses=1 type=i32] [debug line = 16:24]
  %storemerge = select i1 %tmp.6, i32 %tmp.4, i32 %tmp.7, !dbg !95 ; [#uses=1 type=i32] [debug line = 16:3]
  store i32 %storemerge, i32* @state, align 4, !dbg !93 ; [debug line = 15:3]
  %i.1 = add nsw i32 %i, 1, !dbg !97              ; [#uses=1 type=i32] [debug line = 14:25]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !98), !dbg !97 ; [debug line = 14:25] [debug variable = i]
  br label %1, !dbg !97                           ; [debug line = 14:25]

; <label>:2                                       ; preds = %1
  %state.load = load i32* @state, align 4, !dbg !100 ; [#uses=1 type=i32] [debug line = 19:54]
  %tmp = uitofp i32 %state.load to float, !dbg !100 ; [#uses=1 type=float] [debug line = 19:54]
  %tmp.1 = fadd float %tmp, -3.276800e+04, !dbg !100 ; [#uses=1 type=float] [debug line = 19:54]
  %f = fmul float %tmp.1, 0x3F00000000000000, !dbg !100 ; [#uses=1 type=float] [debug line = 19:54]
  call void @llvm.dbg.value(metadata !{float %f}, i64 0, metadata !101), !dbg !100 ; [debug line = 19:54] [debug variable = f]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %out}, i64 0, metadata !102), !dbg !104 ; [debug line = 105:48@20:2] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %out}, i64 0, metadata !106), !dbg !107 ; [debug line = 144:48@106:9@20:2] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{float* %tmp.2}, metadata !110) nounwind, !dbg !112 ; [debug line = 145:22@106:9@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %f}, i64 0, metadata !110), !dbg !113 ; [debug line = 145:31@106:9@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %f}, i64 0, metadata !110), !dbg !113 ; [debug line = 145:31@106:9@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %f}, i64 0, metadata !110), !dbg !113 ; [debug line = 145:31@106:9@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %f}, i64 0, metadata !110), !dbg !113 ; [debug line = 145:31@106:9@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %f}, i64 0, metadata !110), !dbg !113 ; [debug line = 145:31@106:9@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %f}, i64 0, metadata !110), !dbg !113 ; [debug line = 145:31@106:9@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %f}, i64 0, metadata !110), !dbg !113 ; [debug line = 145:31@106:9@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %f}, i64 0, metadata !110), !dbg !113 ; [debug line = 145:31@106:9@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %f}, i64 0, metadata !110), !dbg !113 ; [debug line = 145:31@106:9@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %f}, i64 0, metadata !110), !dbg !113 ; [debug line = 145:31@106:9@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %f}, i64 0, metadata !110), !dbg !113 ; [debug line = 145:31@106:9@20:2] [debug variable = tmp]
  store float %f, float* %tmp.2, align 4, !dbg !113 ; [debug line = 145:31@106:9@20:2]
  %out.addr = getelementptr inbounds %"class.hls::stream.0"* %out, i64 0, i32 0, !dbg !114 ; [#uses=1 type=float*] [debug line = 146:9@106:9@20:2]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %out.addr, float* %tmp.2) nounwind, !dbg !114 ; [debug line = 146:9@106:9@20:2]
  ret void, !dbg !115                             ; [debug line = 21:1]
}

; [#uses=16]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_IfWrite.Stream.floatP.floatP(float*, float*)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!74, !81, !84}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/noisy/noise/solution1/.autopilot/db/noisy.pragma.2.cpp", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/noisy", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !70} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !68, metadata !69}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"noisy", metadata !"noisy", metadata !"_Z5noisyRN3hls6streamIfEE", metadata !6, i32 5, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*)* @noisy, null, null, metadata !20, i32 7} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"noisy.cpp", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/noisy", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_reference_type ]
!10 = metadata !{i32 786434, metadata !11, metadata !"stream<float>", metadata !12, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !13, i32 0, null, metadata !66} ; [ DW_TAG_class_type ]
!11 = metadata !{i32 786489, null, metadata !"hls", metadata !12, i32 69} ; [ DW_TAG_namespace ]
!12 = metadata !{i32 786473, metadata !"/opt/Xilinx_2017_2/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/noisy", null} ; [ DW_TAG_file_type ]
!13 = metadata !{metadata !14, metadata !16, metadata !22, metadata !28, metadata !33, metadata !36, metadata !40, metadata !45, metadata !50, metadata !51, metadata !52, metadata !55, metadata !58, metadata !59, metadata !62}
!14 = metadata !{i32 786445, metadata !10, metadata !"V", metadata !12, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!15 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!16 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 83, metadata !17, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 83} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !19}
!19 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !10} ; [ DW_TAG_pointer_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 86, metadata !23, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 86} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{null, metadata !19, metadata !25}
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!26 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_const_type ]
!27 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 91, metadata !29, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !20, i32 91} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !19, metadata !31}
!31 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_reference_type ]
!32 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!33 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !12, i32 94, metadata !34, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !20, i32 94} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{metadata !9, metadata !19, metadata !31}
!36 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !12, i32 101, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 101} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{null, metadata !19, metadata !39}
!39 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_reference_type ]
!40 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !12, i32 105, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 105} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{null, metadata !19, metadata !43}
!43 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_reference_type ]
!44 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ]
!45 = metadata !{i32 786478, i32 0, metadata !10, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !12, i32 112, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 112} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{metadata !48, metadata !49}
!48 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!49 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !32} ; [ DW_TAG_pointer_type ]
!50 = metadata !{i32 786478, i32 0, metadata !10, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !12, i32 117, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 117} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !12, i32 123, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !12, i32 129, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 129} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{metadata !15, metadata !19}
!55 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !12, i32 136, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 136} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{metadata !48, metadata !19, metadata !39}
!58 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !12, i32 144, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !12, i32 150, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 150} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{metadata !48, metadata !19, metadata !43}
!62 = metadata !{i32 786478, i32 0, metadata !10, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !12, i32 157, metadata !63, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 157} ; [ DW_TAG_subprogram ]
!63 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!64 = metadata !{metadata !65, metadata !19}
!65 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !15, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!68 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !12, i32 105, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !40, metadata !20, i32 105} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786478, i32 0, metadata !11, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !12, i32 144, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !58, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !72, metadata !73}
!72 = metadata !{i32 786484, i32 0, metadata !5, metadata !"state", metadata !"state", metadata !"", metadata !6, i32 10, metadata !65, i32 1, i32 1, i32* @state} ; [ DW_TAG_variable ]
!73 = metadata !{i32 786484, i32 0, metadata !5, metadata !"primpoly", metadata !"primpoly", metadata !"", metadata !6, i32 12, metadata !65, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!74 = metadata !{void (%"class.hls::stream.0"*)* @noisy, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80}
!75 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!76 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"stream<float> &"}
!78 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!79 = metadata !{metadata !"kernel_arg_name", metadata !"out"}
!80 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!81 = metadata !{null, metadata !75, metadata !76, metadata !82, metadata !78, metadata !83, metadata !80}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!83 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!84 = metadata !{null, metadata !75, metadata !76, metadata !82, metadata !78, metadata !85, metadata !80}
!85 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!86 = metadata !{i32 786689, metadata !5, metadata !"out", metadata !6, i32 16777222, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 6, i32 18, metadata !5, null}
!88 = metadata !{i32 8, i32 1, metadata !89, null}
!89 = metadata !{i32 786443, metadata !5, i32 7, i32 3, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 9, i32 1, metadata !89, null}
!91 = metadata !{i32 14, i32 15, metadata !92, null}
!92 = metadata !{i32 786443, metadata !89, i32 14, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 15, i32 3, metadata !94, null}
!94 = metadata !{i32 786443, metadata !92, i32 14, i32 30, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 16, i32 3, metadata !94, null}
!96 = metadata !{i32 16, i32 24, metadata !94, null}
!97 = metadata !{i32 14, i32 25, metadata !92, null}
!98 = metadata !{i32 786688, metadata !92, metadata !"i", metadata !6, i32 14, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!100 = metadata !{i32 19, i32 54, metadata !89, null}
!101 = metadata !{i32 786688, metadata !89, metadata !"f", metadata !6, i32 19, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 786689, metadata !68, metadata !"this", metadata !12, i32 16777321, metadata !103, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!104 = metadata !{i32 105, i32 48, metadata !68, metadata !105}
!105 = metadata !{i32 20, i32 2, metadata !89, null}
!106 = metadata !{i32 786689, metadata !69, metadata !"this", metadata !12, i32 16777360, metadata !103, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!107 = metadata !{i32 144, i32 48, metadata !69, metadata !108}
!108 = metadata !{i32 106, i32 9, metadata !109, metadata !105}
!109 = metadata !{i32 786443, metadata !68, i32 105, i32 88, metadata !12, i32 3} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 786688, metadata !111, metadata !"tmp", metadata !12, i32 145, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 786443, metadata !69, i32 144, i32 79, metadata !12, i32 4} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 145, i32 22, metadata !111, metadata !108}
!113 = metadata !{i32 145, i32 31, metadata !111, metadata !108}
!114 = metadata !{i32 146, i32 9, metadata !111, metadata !108}
!115 = metadata !{i32 21, i32 1, metadata !89, null}
