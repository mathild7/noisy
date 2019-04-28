; ModuleID = '/home/hildeb47/proj/ECE1373_GhostSynth/mods/noisy/noise/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@state = internal unnamed_addr global i32 1, align 4 ; [#uses=3 type=i32*]
@noisy.str = internal unnamed_addr constant [6 x i8] c"noisy\00" ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=11 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]

; [#uses=0]
define void @noisy(float* %out.V) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %out.V), !map !80
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @noisy.str) nounwind
  %tmp.2 = alloca float, align 4                  ; [#uses=2 type=float*]
  call void @llvm.dbg.value(metadata !{float* %out.V}, i64 0, metadata !86), !dbg !91 ; [debug line = 6:18] [debug variable = out.V]
  call void (...)* @_ssdm_op_SpecInterface(float* %out.V, [5 x i8]* @.str, i32 1, i32 1, [5 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str2, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2, [1 x i8]* @.str2) nounwind, !dbg !92 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str2, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2, [1 x i8]* @.str2) nounwind, !dbg !94 ; [debug line = 9:1]
  br label %1, !dbg !95                           ; [debug line = 14:15]

; <label>:1                                       ; preds = %._crit_edge, %0
  %i = phi i5 [ 0, %0 ], [ %i.1, %._crit_edge ]   ; [#uses=2 type=i5]
  %exitcond = icmp eq i5 %i, -16, !dbg !95        ; [#uses=1 type=i1] [debug line = 14:15]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %exitcond, label %3, label %._crit_edge, !dbg !95 ; [debug line = 14:15]

._crit_edge:                                      ; preds = %1
  %state.load.1 = load i32* @state, align 4, !dbg !97 ; [#uses=1 type=i32] [debug line = 15:3]
  %tmp.4 = shl i32 %state.load.1, 1, !dbg !97     ; [#uses=3 type=i32] [debug line = 15:3]
  %tmp.4.cast = trunc i32 %tmp.4 to i17, !dbg !99 ; [#uses=1 type=i17] [debug line = 16:3]
  %tmp.6 = icmp sgt i17 %tmp.4.cast, -1, !dbg !99 ; [#uses=1 type=i1] [debug line = 16:3]
  %tmp.7 = xor i32 %tmp.4, 69643, !dbg !100       ; [#uses=1 type=i32] [debug line = 16:24]
  %storemerge = select i1 %tmp.6, i32 %tmp.4, i32 %tmp.7, !dbg !99 ; [#uses=1 type=i32] [debug line = 16:3]
  store i32 %storemerge, i32* @state, align 4, !dbg !97 ; [debug line = 15:3]
  %i.1 = add i5 %i, 1, !dbg !101                  ; [#uses=1 type=i5] [debug line = 14:25]
  call void @llvm.dbg.value(metadata !{i5 %i.1}, i64 0, metadata !102), !dbg !101 ; [debug line = 14:25] [debug variable = i]
  br label %1, !dbg !101                          ; [debug line = 14:25]

; <label>:3                                       ; preds = %1
  %state.load = load i32* @state, align 4, !dbg !104 ; [#uses=1 type=i32] [debug line = 19:54]
  %tmp = uitofp i32 %state.load to float, !dbg !104 ; [#uses=1 type=float] [debug line = 19:54]
  %tmp.1 = fadd float %tmp, -3.276800e+04, !dbg !104 ; [#uses=1 type=float] [debug line = 19:54]
  %f = fmul float %tmp.1, 0x3F00000000000000, !dbg !104 ; [#uses=1 type=float] [debug line = 19:54]
  call void @llvm.dbg.value(metadata !{float %f}, i64 0, metadata !105), !dbg !104 ; [debug line = 19:54] [debug variable = f]
  call void @llvm.dbg.value(metadata !{float* %out.V}, i64 0, metadata !106), !dbg !111 ; [debug line = 105:48@20:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %out.V}, i64 0, metadata !113), !dbg !116 ; [debug line = 144:48@106:9@20:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp.2}, metadata !119) nounwind, !dbg !121 ; [debug line = 145:22@106:9@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %f}, i64 0, metadata !119), !dbg !122 ; [debug line = 145:31@106:9@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %f}, i64 0, metadata !119), !dbg !122 ; [debug line = 145:31@106:9@20:2] [debug variable = tmp]
  store float %f, float* %tmp.2, align 4, !dbg !122 ; [debug line = 145:31@106:9@20:2]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %out.V, float* %tmp.2) nounwind, !dbg !123 ; [debug line = 146:9@106:9@20:2]
  ret void, !dbg !124                             ; [debug line = 21:1]
}

; [#uses=7]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare void @_ssdm_op_IfWrite.Stream.floatP.floatP(float*, float*)

!opencl.kernels = !{!0, !7, !10}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!12}

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
!12 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/noisy/noise/solution1/.autopilot/db/noisy.pragma.2.cpp", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/noisy", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !13} ; [ DW_TAG_compile_unit ]
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !15, metadata !79}
!15 = metadata !{i32 786484, i32 0, metadata !16, metadata !"state", metadata !"state", metadata !"", metadata !17, i32 10, metadata !76, i32 1, i32 1, i32* @state} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786478, i32 0, metadata !17, metadata !"noisy", metadata !"noisy", metadata !"_Z5noisyRN3hls6streamIfEE", metadata !17, i32 5, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !31, i32 7} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786473, metadata !"noisy.cpp", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/noisy", null} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !20}
!20 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_reference_type ]
!21 = metadata !{i32 786434, metadata !22, metadata !"stream<float>", metadata !23, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !24, i32 0, null, metadata !77} ; [ DW_TAG_class_type ]
!22 = metadata !{i32 786489, null, metadata !"hls", metadata !23, i32 69} ; [ DW_TAG_namespace ]
!23 = metadata !{i32 786473, metadata !"/opt/Xilinx_2017_2/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/noisy", null} ; [ DW_TAG_file_type ]
!24 = metadata !{metadata !25, metadata !27, metadata !33, metadata !39, metadata !44, metadata !47, metadata !51, metadata !56, metadata !61, metadata !62, metadata !63, metadata !66, metadata !69, metadata !70, metadata !73}
!25 = metadata !{i32 786445, metadata !21, metadata !"V", metadata !23, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ]
!26 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!27 = metadata !{i32 786478, i32 0, metadata !21, metadata !"stream", metadata !"stream", metadata !"", metadata !23, i32 83, metadata !28, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !31, i32 83} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!29 = metadata !{null, metadata !30}
!30 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !21} ; [ DW_TAG_pointer_type ]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!33 = metadata !{i32 786478, i32 0, metadata !21, metadata !"stream", metadata !"stream", metadata !"", metadata !23, i32 86, metadata !34, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !31, i32 86} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{null, metadata !30, metadata !36}
!36 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ]
!37 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_const_type ]
!38 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!39 = metadata !{i32 786478, i32 0, metadata !21, metadata !"stream", metadata !"stream", metadata !"", metadata !23, i32 91, metadata !40, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !31, i32 91} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{null, metadata !30, metadata !42}
!42 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_reference_type ]
!43 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_const_type ]
!44 = metadata !{i32 786478, i32 0, metadata !21, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !23, i32 94, metadata !45, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !31, i32 94} ; [ DW_TAG_subprogram ]
!45 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!46 = metadata !{metadata !20, metadata !30, metadata !42}
!47 = metadata !{i32 786478, i32 0, metadata !21, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !23, i32 101, metadata !48, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !31, i32 101} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{null, metadata !30, metadata !50}
!50 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_reference_type ]
!51 = metadata !{i32 786478, i32 0, metadata !21, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !23, i32 105, metadata !52, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !31, i32 105} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{null, metadata !30, metadata !54}
!54 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_reference_type ]
!55 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_const_type ]
!56 = metadata !{i32 786478, i32 0, metadata !21, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !23, i32 112, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !31, i32 112} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!58 = metadata !{metadata !59, metadata !60}
!59 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!60 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !43} ; [ DW_TAG_pointer_type ]
!61 = metadata !{i32 786478, i32 0, metadata !21, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !23, i32 117, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !31, i32 117} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 786478, i32 0, metadata !21, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !23, i32 123, metadata !48, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !31, i32 123} ; [ DW_TAG_subprogram ]
!63 = metadata !{i32 786478, i32 0, metadata !21, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !23, i32 129, metadata !64, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !31, i32 129} ; [ DW_TAG_subprogram ]
!64 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!65 = metadata !{metadata !26, metadata !30}
!66 = metadata !{i32 786478, i32 0, metadata !21, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !23, i32 136, metadata !67, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !31, i32 136} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !68, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!68 = metadata !{metadata !59, metadata !30, metadata !50}
!69 = metadata !{i32 786478, i32 0, metadata !21, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !23, i32 144, metadata !52, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !31, i32 144} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786478, i32 0, metadata !21, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !23, i32 150, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !31, i32 150} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{metadata !59, metadata !30, metadata !54}
!73 = metadata !{i32 786478, i32 0, metadata !21, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !23, i32 157, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !31, i32 157} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{metadata !76, metadata !30}
!76 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !26, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!79 = metadata !{i32 786484, i32 0, metadata !16, metadata !"primpoly", metadata !"primpoly", metadata !"", metadata !17, i32 12, metadata !76, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 31, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"out.V", metadata !84, metadata !"float", i32 0, i32 31}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 0, i32 0, i32 1}
!86 = metadata !{i32 790531, metadata !87, metadata !"out.V", null, i32 6, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!87 = metadata !{i32 786689, metadata !16, metadata !"out", metadata !17, i32 16777222, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ]
!89 = metadata !{i32 786438, metadata !22, metadata !"stream<float>", metadata !23, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !90, i32 0, null, metadata !77} ; [ DW_TAG_class_field_type ]
!90 = metadata !{metadata !25}
!91 = metadata !{i32 6, i32 18, metadata !16, null}
!92 = metadata !{i32 8, i32 1, metadata !93, null}
!93 = metadata !{i32 786443, metadata !16, i32 7, i32 3, metadata !17, i32 0} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 9, i32 1, metadata !93, null}
!95 = metadata !{i32 14, i32 15, metadata !96, null}
!96 = metadata !{i32 786443, metadata !93, i32 14, i32 2, metadata !17, i32 1} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 15, i32 3, metadata !98, null}
!98 = metadata !{i32 786443, metadata !96, i32 14, i32 30, metadata !17, i32 2} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 16, i32 3, metadata !98, null}
!100 = metadata !{i32 16, i32 24, metadata !98, null}
!101 = metadata !{i32 14, i32 25, metadata !96, null}
!102 = metadata !{i32 786688, metadata !96, metadata !"i", metadata !17, i32 14, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!104 = metadata !{i32 19, i32 54, metadata !93, null}
!105 = metadata !{i32 786688, metadata !93, metadata !"f", metadata !17, i32 19, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 790531, metadata !107, metadata !"stream<float>.V", null, i32 105, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!107 = metadata !{i32 786689, metadata !108, metadata !"this", metadata !23, i32 16777321, metadata !109, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !23, i32 105, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !51, metadata !31, i32 105} ; [ DW_TAG_subprogram ]
!109 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ]
!110 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ]
!111 = metadata !{i32 105, i32 48, metadata !108, metadata !112}
!112 = metadata !{i32 20, i32 2, metadata !93, null}
!113 = metadata !{i32 790531, metadata !114, metadata !"stream<float>.V", null, i32 144, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!114 = metadata !{i32 786689, metadata !115, metadata !"this", metadata !23, i32 16777360, metadata !109, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 786478, i32 0, metadata !22, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !23, i32 144, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !69, metadata !31, i32 144} ; [ DW_TAG_subprogram ]
!116 = metadata !{i32 144, i32 48, metadata !115, metadata !117}
!117 = metadata !{i32 106, i32 9, metadata !118, metadata !112}
!118 = metadata !{i32 786443, metadata !108, i32 105, i32 88, metadata !23, i32 3} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 786688, metadata !120, metadata !"tmp", metadata !23, i32 145, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 786443, metadata !115, i32 144, i32 79, metadata !23, i32 4} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 145, i32 22, metadata !120, metadata !117}
!122 = metadata !{i32 145, i32 31, metadata !120, metadata !117}
!123 = metadata !{i32 146, i32 9, metadata !120, metadata !117}
!124 = metadata !{i32 21, i32 1, metadata !93, null}
