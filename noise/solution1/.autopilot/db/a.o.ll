; ModuleID = '/home/hildeb47/proj/ECE1373_GhostSynth/mods/noisy/noise/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream" = type { float }

@.str = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@_ZZ5noisyRN3hls6streamIfEEE5state = internal global i32 1, align 4 ; [#uses=6 type=i32*]
@_ZZ5noisyRN3hls6streamIfEEE8primpoly = internal global i32 69643, align 4 ; [#uses=1 type=i32*]

; [#uses=0]
define void @_Z5noisyRN3hls6streamIfEE(%"class.hls::stream"* %out) nounwind uwtable {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=3 type=%"class.hls::stream"**]
  %i = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %f = alloca float, align 4                      ; [#uses=2 type=float*]
  store %"class.hls::stream"* %out, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !86), !dbg !87 ; [debug line = 6:18] [debug variable = out]
  %2 = load %"class.hls::stream"** %1, align 8, !dbg !88 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream"* %2, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !88 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !90 ; [debug line = 9:1]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !91), !dbg !94 ; [debug line = 14:10] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !95         ; [debug line = 14:15]
  br label %3, !dbg !95                           ; [debug line = 14:15]

; <label>:3                                       ; preds = %17, %0
  %4 = load i32* %i, align 4, !dbg !95            ; [#uses=1 type=i32] [debug line = 14:15]
  %5 = icmp slt i32 %4, 16, !dbg !95              ; [#uses=1 type=i1] [debug line = 14:15]
  br i1 %5, label %6, label %20, !dbg !95         ; [debug line = 14:15]

; <label>:6                                       ; preds = %3
  %7 = load i32* @_ZZ5noisyRN3hls6streamIfEEE5state, align 4, !dbg !96 ; [#uses=1 type=i32] [debug line = 15:3]
  %8 = shl i32 %7, 1, !dbg !96                    ; [#uses=1 type=i32] [debug line = 15:3]
  store i32 %8, i32* @_ZZ5noisyRN3hls6streamIfEEE5state, align 4, !dbg !96 ; [debug line = 15:3]
  %9 = load i32* @_ZZ5noisyRN3hls6streamIfEEE5state, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 16:3]
  %10 = and i32 %9, 65536, !dbg !98               ; [#uses=1 type=i32] [debug line = 16:3]
  %11 = icmp ne i32 %10, 0, !dbg !98              ; [#uses=1 type=i1] [debug line = 16:3]
  br i1 %11, label %12, label %16, !dbg !98       ; [debug line = 16:3]

; <label>:12                                      ; preds = %6
  %13 = load i32* @_ZZ5noisyRN3hls6streamIfEEE8primpoly, align 4, !dbg !99 ; [#uses=1 type=i32] [debug line = 16:24]
  %14 = load i32* @_ZZ5noisyRN3hls6streamIfEEE5state, align 4, !dbg !99 ; [#uses=1 type=i32] [debug line = 16:24]
  %15 = xor i32 %14, %13, !dbg !99                ; [#uses=1 type=i32] [debug line = 16:24]
  store i32 %15, i32* @_ZZ5noisyRN3hls6streamIfEEE5state, align 4, !dbg !99 ; [debug line = 16:24]
  br label %16, !dbg !99                          ; [debug line = 16:24]

; <label>:16                                      ; preds = %12, %6
  br label %17, !dbg !100                         ; [debug line = 17:2]

; <label>:17                                      ; preds = %16
  %18 = load i32* %i, align 4, !dbg !101          ; [#uses=1 type=i32] [debug line = 14:25]
  %19 = add nsw i32 %18, 1, !dbg !101             ; [#uses=1 type=i32] [debug line = 14:25]
  store i32 %19, i32* %i, align 4, !dbg !101      ; [debug line = 14:25]
  br label %3, !dbg !101                          ; [debug line = 14:25]

; <label>:20                                      ; preds = %3
  call void @llvm.dbg.declare(metadata !{float* %f}, metadata !102), !dbg !103 ; [debug line = 19:8] [debug variable = f]
  %21 = load i32* @_ZZ5noisyRN3hls6streamIfEEE5state, align 4, !dbg !104 ; [#uses=1 type=i32] [debug line = 19:54]
  %22 = uitofp i32 %21 to float, !dbg !104        ; [#uses=1 type=float] [debug line = 19:54]
  %23 = fsub float %22, 3.276800e+04, !dbg !104   ; [#uses=1 type=float] [debug line = 19:54]
  %24 = fdiv float %23, 3.276800e+04, !dbg !104   ; [#uses=1 type=float] [debug line = 19:54]
  store float %24, float* %f, align 4, !dbg !104  ; [debug line = 19:54]
  %25 = load %"class.hls::stream"** %1, align 8, !dbg !105 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 20:2]
  call void @_ZN3hls6streamIfElsERKf(%"class.hls::stream"* %25, float* %f), !dbg !105 ; [debug line = 20:2]
  ret void, !dbg !106                             ; [debug line = 21:1]
}

; [#uses=8]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfElsERKf(%"class.hls::stream"* %this, float* %wdata) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !107), !dbg !109 ; [debug line = 105:48] [debug variable = this]
  store float* %wdata, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !110), !dbg !111 ; [debug line = 105:81] [debug variable = wdata]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  %4 = load float** %2, align 8, !dbg !112        ; [#uses=1 type=float*] [debug line = 106:9]
  call void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream"* %3, float* %4), !dbg !112 ; [debug line = 106:9]
  ret void, !dbg !114                             ; [debug line = 107:5]
}

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream"* %this, float* %din) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !115), !dbg !116 ; [debug line = 144:48] [debug variable = this]
  store float* %din, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !117), !dbg !118 ; [debug line = 144:74] [debug variable = din]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !119), !dbg !121 ; [debug line = 145:22] [debug variable = tmp]
  %4 = load float** %2, align 8, !dbg !122        ; [#uses=1 type=float*] [debug line = 145:31]
  %5 = load float* %4, align 4, !dbg !122         ; [#uses=1 type=float] [debug line = 145:31]
  store float %5, float* %tmp, align 4, !dbg !122 ; [debug line = 145:31]
  %6 = getelementptr inbounds %"class.hls::stream"* %3, i32 0, i32 0, !dbg !123 ; [#uses=1 type=float*] [debug line = 146:9]
  call void (...)* @_ssdm_StreamWrite(float* %6, float* %tmp) nounwind, !dbg !123 ; [debug line = 146:9]
  ret void, !dbg !124                             ; [debug line = 147:5]
}

; [#uses=1]
declare void @_ssdm_StreamWrite(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!74, !81, !84}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/noisy/noise/solution1/.autopilot/db/noisy.pragma.2.cpp", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/noisy", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !70} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !68, metadata !69}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"noisy", metadata !"noisy", metadata !"_Z5noisyRN3hls6streamIfEE", metadata !6, i32 5, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*)* @_Z5noisyRN3hls6streamIfEE, null, null, metadata !20, i32 7} ; [ DW_TAG_subprogram ]
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
!68 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !12, i32 105, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfElsERKf, null, metadata !40, metadata !20, i32 105} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786478, i32 0, metadata !11, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !12, i32 144, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE5writeERKf, null, metadata !58, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !72, metadata !73}
!72 = metadata !{i32 786484, i32 0, metadata !5, metadata !"state", metadata !"state", metadata !"", metadata !6, i32 10, metadata !65, i32 1, i32 1, i32* @_ZZ5noisyRN3hls6streamIfEEE5state} ; [ DW_TAG_variable ]
!73 = metadata !{i32 786484, i32 0, metadata !5, metadata !"primpoly", metadata !"primpoly", metadata !"", metadata !6, i32 12, metadata !65, i32 1, i32 1, i32* @_ZZ5noisyRN3hls6streamIfEEE8primpoly} ; [ DW_TAG_variable ]
!74 = metadata !{void (%"class.hls::stream"*)* @_Z5noisyRN3hls6streamIfEE, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80}
!75 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!76 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"stream<float> &"}
!78 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!79 = metadata !{metadata !"kernel_arg_name", metadata !"out"}
!80 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!81 = metadata !{void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfElsERKf, metadata !75, metadata !76, metadata !82, metadata !78, metadata !83, metadata !80}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!83 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!84 = metadata !{void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE5writeERKf, metadata !75, metadata !76, metadata !82, metadata !78, metadata !85, metadata !80}
!85 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!86 = metadata !{i32 786689, metadata !5, metadata !"out", metadata !6, i32 16777222, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 6, i32 18, metadata !5, null}
!88 = metadata !{i32 8, i32 1, metadata !89, null}
!89 = metadata !{i32 786443, metadata !5, i32 7, i32 3, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 9, i32 1, metadata !89, null}
!91 = metadata !{i32 786688, metadata !92, metadata !"i", metadata !6, i32 14, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 786443, metadata !89, i32 14, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!94 = metadata !{i32 14, i32 10, metadata !92, null}
!95 = metadata !{i32 14, i32 15, metadata !92, null}
!96 = metadata !{i32 15, i32 3, metadata !97, null}
!97 = metadata !{i32 786443, metadata !92, i32 14, i32 30, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 16, i32 3, metadata !97, null}
!99 = metadata !{i32 16, i32 24, metadata !97, null}
!100 = metadata !{i32 17, i32 2, metadata !97, null}
!101 = metadata !{i32 14, i32 25, metadata !92, null}
!102 = metadata !{i32 786688, metadata !89, metadata !"f", metadata !6, i32 19, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 19, i32 8, metadata !89, null}
!104 = metadata !{i32 19, i32 54, metadata !89, null}
!105 = metadata !{i32 20, i32 2, metadata !89, null}
!106 = metadata !{i32 21, i32 1, metadata !89, null}
!107 = metadata !{i32 786689, metadata !68, metadata !"this", metadata !12, i32 16777321, metadata !108, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!109 = metadata !{i32 105, i32 48, metadata !68, null}
!110 = metadata !{i32 786689, metadata !68, metadata !"wdata", metadata !12, i32 33554537, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 105, i32 81, metadata !68, null}
!112 = metadata !{i32 106, i32 9, metadata !113, null}
!113 = metadata !{i32 786443, metadata !68, i32 105, i32 88, metadata !12, i32 3} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 107, i32 5, metadata !113, null}
!115 = metadata !{i32 786689, metadata !69, metadata !"this", metadata !12, i32 16777360, metadata !108, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 144, i32 48, metadata !69, null}
!117 = metadata !{i32 786689, metadata !69, metadata !"din", metadata !12, i32 33554576, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!118 = metadata !{i32 144, i32 74, metadata !69, null}
!119 = metadata !{i32 786688, metadata !120, metadata !"tmp", metadata !12, i32 145, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 786443, metadata !69, i32 144, i32 79, metadata !12, i32 4} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 145, i32 22, metadata !120, null}
!122 = metadata !{i32 145, i32 31, metadata !120, null}
!123 = metadata !{i32 146, i32 9, metadata !120, null}
!124 = metadata !{i32 147, i32 5, metadata !120, null}
