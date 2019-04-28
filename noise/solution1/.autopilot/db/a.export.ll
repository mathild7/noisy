; ModuleID = '/home/hildeb47/proj/ECE1373_GhostSynth/mods/noisy/noise/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@state = internal unnamed_addr global i32 1, align 4
@noisy_str = internal unnamed_addr constant [6 x i8] c"noisy\00"
@p_str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

define void @noisy(float* %out_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %out_V), !map !12
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @noisy_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %out_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  br label %1

; <label>:1                                       ; preds = %._crit_edge, %0
  %i = phi i5 [ 0, %0 ], [ %i_1, %._crit_edge ]
  %exitcond = icmp eq i5 %i, -16
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_1 = add i5 %i, 1
  br i1 %exitcond, label %2, label %._crit_edge

._crit_edge:                                      ; preds = %1
  %state_load_1 = load i32* @state, align 4
  %tmp_3 = shl i32 %state_load_1, 1
  %tmp_4 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %state_load_1, i32 15)
  %tmp_7 = xor i32 %tmp_3, 69643
  %storemerge = select i1 %tmp_4, i32 %tmp_7, i32 %tmp_3
  store i32 %storemerge, i32* @state, align 4
  br label %1

; <label>:2                                       ; preds = %1
  %state_load = load i32* @state, align 4
  %tmp = uitofp i32 %state_load to float
  %tmp_1 = fadd float %tmp, -3.276800e+04
  %f = fmul float %tmp_1, 0x3F00000000000000
  call void @_ssdm_op_Write.axis.volatile.floatP(float* %out_V, float %f)
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_Write.axis.volatile.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_2 = and i32 %0, %empty
  %empty_3 = icmp ne i32 %empty_2, 0
  ret i1 %empty_3
}

define weak i1 @_ssdm_op_BitSelect.i1.i17.i32(i17, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i17
  %empty_4 = shl i17 1, %empty
  %empty_5 = and i17 %0, %empty_4
  %empty_6 = icmp ne i17 %empty_5, 0
  ret i1 %empty_6
}

declare i1 @_ssdm_op_BitSelect.i1.i16.i32(i16, i32) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

define weak i17 @_ssdm_op_BitConcatenate.i17.i16.i1(i16, i1) nounwind readnone {
entry:
  %empty = zext i16 %0 to i17
  %empty_7 = zext i1 %1 to i17
  %empty_8 = shl i17 %empty, 1
  %empty_9 = or i17 %empty_8, %empty_7
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
