; ModuleID = '/home/hildeb47/proj/ECE1373_GhostSynth/mods/noisy/noise/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@state = internal unnamed_addr global i32 1, align 4 ; [#uses=3 type=i32*]
@noisy_str = internal unnamed_addr constant [6 x i8] c"noisy\00" ; [#uses=1 type=[6 x i8]*]
@p_str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=11 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]

; [#uses=0]
define void @noisy(float* %out_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %out_V), !map !12
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @noisy_str) nounwind
  call void @llvm.dbg.value(metadata !{float* %out_V}, i64 0, metadata !18), !dbg !86 ; [debug line = 6:18] [debug variable = out.V]
  call void (...)* @_ssdm_op_SpecInterface(float* %out_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !87 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !89 ; [debug line = 9:1]
  br label %1, !dbg !90                           ; [debug line = 14:15]

; <label>:1                                       ; preds = %._crit_edge, %0
  %i = phi i5 [ 0, %0 ], [ %i_1, %._crit_edge ]   ; [#uses=2 type=i5]
  %exitcond = icmp eq i5 %i, -16, !dbg !90        ; [#uses=1 type=i1] [debug line = 14:15]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  %i_1 = add i5 %i, 1, !dbg !92                   ; [#uses=1 type=i5] [debug line = 14:25]
  br i1 %exitcond, label %2, label %._crit_edge, !dbg !90 ; [debug line = 14:15]

._crit_edge:                                      ; preds = %1
  %state_load_1 = load i32* @state, align 4, !dbg !93 ; [#uses=2 type=i32] [debug line = 15:3]
  %tmp_3 = shl i32 %state_load_1, 1, !dbg !93     ; [#uses=2 type=i32] [debug line = 15:3]
  %tmp_4 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %state_load_1, i32 15), !dbg !95 ; [#uses=1 type=i1] [debug line = 16:3]
  %tmp_7 = xor i32 %tmp_3, 69643, !dbg !96        ; [#uses=1 type=i32] [debug line = 16:24]
  %storemerge = select i1 %tmp_4, i32 %tmp_7, i32 %tmp_3, !dbg !95 ; [#uses=1 type=i32] [debug line = 16:3]
  store i32 %storemerge, i32* @state, align 4, !dbg !93 ; [debug line = 15:3]
  call void @llvm.dbg.value(metadata !{i5 %i_1}, i64 0, metadata !97), !dbg !92 ; [debug line = 14:25] [debug variable = i]
  br label %1, !dbg !92                           ; [debug line = 14:25]

; <label>:2                                       ; preds = %1
  %state_load = load i32* @state, align 4, !dbg !99 ; [#uses=1 type=i32] [debug line = 19:54]
  %tmp = uitofp i32 %state_load to float, !dbg !99 ; [#uses=1 type=float] [debug line = 19:54]
  %tmp_1 = fadd float %tmp, -3.276800e+04, !dbg !99 ; [#uses=1 type=float] [debug line = 19:54]
  %f = fmul float %tmp_1, 0x3F00000000000000, !dbg !99 ; [#uses=1 type=float] [debug line = 19:54]
  call void @llvm.dbg.value(metadata !{float %f}, i64 0, metadata !100), !dbg !99 ; [debug line = 19:54] [debug variable = f]
  call void @llvm.dbg.value(metadata !{float* %out_V}, i64 0, metadata !101), !dbg !106 ; [debug line = 105:48@20:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %out_V}, i64 0, metadata !108), !dbg !111 ; [debug line = 144:48@106:9@20:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %f}, i64 0, metadata !114), !dbg !116 ; [debug line = 145:31@106:9@20:2] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.floatP(float* %out_V, float %f), !dbg !117 ; [debug line = 146:9@106:9@20:2]
  ret void, !dbg !118                             ; [debug line = 21:1]
}

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_Write.axis.volatile.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=0]
declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1                          ; [#uses=1 type=i32]
  %empty_2 = and i32 %0, %empty                   ; [#uses=1 type=i32]
  %empty_3 = icmp ne i32 %empty_2, 0              ; [#uses=1 type=i1]
  ret i1 %empty_3
}

; [#uses=0]
define weak i1 @_ssdm_op_BitSelect.i1.i17.i32(i17, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i17                    ; [#uses=1 type=i17]
  %empty_4 = shl i17 1, %empty                    ; [#uses=1 type=i17]
  %empty_5 = and i17 %0, %empty_4                 ; [#uses=1 type=i17]
  %empty_6 = icmp ne i17 %empty_5, 0              ; [#uses=1 type=i1]
  ret i1 %empty_6
}

; [#uses=0]
declare i1 @_ssdm_op_BitSelect.i1.i16.i32(i16, i32) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

; [#uses=0]
define weak i17 @_ssdm_op_BitConcatenate.i17.i16.i1(i16, i1) nounwind readnone {
entry:
  %empty = zext i16 %0 to i17                     ; [#uses=1 type=i17]
  %empty_7 = zext i1 %1 to i17                    ; [#uses=1 type=i17]
  %empty_8 = shl i17 %empty, 1                    ; [#uses=1 type=i17]
  %empty_9 = or i17 %empty_8, %empty_7            ; [#uses=1 type=i17]
  ret i17 %empty_9
}

!opencl.kernels = !{!0, !7, !10}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"stream<float> &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !9, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!9 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!10 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !11, metadata !6}
!11 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 31, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"out.V", metadata !16, metadata !"float", i32 0, i32 31}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 0, i32 1}
!18 = metadata !{i32 790531, metadata !19, metadata !"out.V", null, i32 6, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!19 = metadata !{i32 786689, metadata !20, metadata !"out", metadata !21, i32 16777222, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!20 = metadata !{i32 786478, i32 0, metadata !21, metadata !"noisy", metadata !"noisy", metadata !"_Z5noisyRN3hls6streamIfEE", metadata !21, i32 5, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !35, i32 7} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786473, metadata !"noisy.cpp", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/noisy", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !24}
!24 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_reference_type ]
!25 = metadata !{i32 786434, metadata !26, metadata !"stream<float>", metadata !27, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !28, i32 0, null, metadata !81} ; [ DW_TAG_class_type ]
!26 = metadata !{i32 786489, null, metadata !"hls", metadata !27, i32 69} ; [ DW_TAG_namespace ]
!27 = metadata !{i32 786473, metadata !"/opt/Xilinx_2017_2/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/noisy", null} ; [ DW_TAG_file_type ]
!28 = metadata !{metadata !29, metadata !31, metadata !37, metadata !43, metadata !48, metadata !51, metadata !55, metadata !60, metadata !65, metadata !66, metadata !67, metadata !70, metadata !73, metadata !74, metadata !77}
!29 = metadata !{i32 786445, metadata !25, metadata !"V", metadata !27, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ]
!30 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!31 = metadata !{i32 786478, i32 0, metadata !25, metadata !"stream", metadata !"stream", metadata !"", metadata !27, i32 83, metadata !32, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 83} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{null, metadata !34}
!34 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !25} ; [ DW_TAG_pointer_type ]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!37 = metadata !{i32 786478, i32 0, metadata !25, metadata !"stream", metadata !"stream", metadata !"", metadata !27, i32 86, metadata !38, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 86} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!39 = metadata !{null, metadata !34, metadata !40}
!40 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ]
!41 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_const_type ]
!42 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!43 = metadata !{i32 786478, i32 0, metadata !25, metadata !"stream", metadata !"stream", metadata !"", metadata !27, i32 91, metadata !44, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !35, i32 91} ; [ DW_TAG_subprogram ]
!44 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!45 = metadata !{null, metadata !34, metadata !46}
!46 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_reference_type ]
!47 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_const_type ]
!48 = metadata !{i32 786478, i32 0, metadata !25, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !27, i32 94, metadata !49, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !35, i32 94} ; [ DW_TAG_subprogram ]
!49 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!50 = metadata !{metadata !24, metadata !34, metadata !46}
!51 = metadata !{i32 786478, i32 0, metadata !25, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !27, i32 101, metadata !52, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 101} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{null, metadata !34, metadata !54}
!54 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_reference_type ]
!55 = metadata !{i32 786478, i32 0, metadata !25, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !27, i32 105, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 105} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{null, metadata !34, metadata !58}
!58 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_reference_type ]
!59 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_const_type ]
!60 = metadata !{i32 786478, i32 0, metadata !25, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !27, i32 112, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 112} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{metadata !63, metadata !64}
!63 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!64 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !47} ; [ DW_TAG_pointer_type ]
!65 = metadata !{i32 786478, i32 0, metadata !25, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !27, i32 117, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 117} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786478, i32 0, metadata !25, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !27, i32 123, metadata !52, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 123} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 786478, i32 0, metadata !25, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !27, i32 129, metadata !68, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 129} ; [ DW_TAG_subprogram ]
!68 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!69 = metadata !{metadata !30, metadata !34}
!70 = metadata !{i32 786478, i32 0, metadata !25, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !27, i32 136, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 136} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{metadata !63, metadata !34, metadata !54}
!73 = metadata !{i32 786478, i32 0, metadata !25, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !27, i32 144, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 144} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786478, i32 0, metadata !25, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !27, i32 150, metadata !75, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 150} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{metadata !63, metadata !34, metadata !58}
!77 = metadata !{i32 786478, i32 0, metadata !25, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !27, i32 157, metadata !78, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 157} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{metadata !80, metadata !34}
!80 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!81 = metadata !{metadata !82}
!82 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !30, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!83 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ]
!84 = metadata !{i32 786438, metadata !26, metadata !"stream<float>", metadata !27, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !85, i32 0, null, metadata !81} ; [ DW_TAG_class_field_type ]
!85 = metadata !{metadata !29}
!86 = metadata !{i32 6, i32 18, metadata !20, null}
!87 = metadata !{i32 8, i32 1, metadata !88, null}
!88 = metadata !{i32 786443, metadata !20, i32 7, i32 3, metadata !21, i32 0} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 9, i32 1, metadata !88, null}
!90 = metadata !{i32 14, i32 15, metadata !91, null}
!91 = metadata !{i32 786443, metadata !88, i32 14, i32 2, metadata !21, i32 1} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 14, i32 25, metadata !91, null}
!93 = metadata !{i32 15, i32 3, metadata !94, null}
!94 = metadata !{i32 786443, metadata !91, i32 14, i32 30, metadata !21, i32 2} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 16, i32 3, metadata !94, null}
!96 = metadata !{i32 16, i32 24, metadata !94, null}
!97 = metadata !{i32 786688, metadata !91, metadata !"i", metadata !21, i32 14, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!99 = metadata !{i32 19, i32 54, metadata !88, null}
!100 = metadata !{i32 786688, metadata !88, metadata !"f", metadata !21, i32 19, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 790531, metadata !102, metadata !"stream<float>.V", null, i32 105, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!102 = metadata !{i32 786689, metadata !103, metadata !"this", metadata !27, i32 16777321, metadata !104, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 786478, i32 0, metadata !26, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !27, i32 105, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !55, metadata !35, i32 105} ; [ DW_TAG_subprogram ]
!104 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!105 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ]
!106 = metadata !{i32 105, i32 48, metadata !103, metadata !107}
!107 = metadata !{i32 20, i32 2, metadata !88, null}
!108 = metadata !{i32 790531, metadata !109, metadata !"stream<float>.V", null, i32 144, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!109 = metadata !{i32 786689, metadata !110, metadata !"this", metadata !27, i32 16777360, metadata !104, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 786478, i32 0, metadata !26, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !27, i32 144, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !73, metadata !35, i32 144} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 144, i32 48, metadata !110, metadata !112}
!112 = metadata !{i32 106, i32 9, metadata !113, metadata !107}
!113 = metadata !{i32 786443, metadata !103, i32 105, i32 88, metadata !27, i32 3} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 786688, metadata !115, metadata !"tmp", metadata !27, i32 145, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 786443, metadata !110, i32 144, i32 79, metadata !27, i32 4} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 145, i32 31, metadata !115, metadata !112}
!117 = metadata !{i32 146, i32 9, metadata !115, metadata !112}
!118 = metadata !{i32 21, i32 1, metadata !88, null}
