; ModuleID = '/home/iq/Documents/marketinternational_filter/HLS_IPs/Packet_Parser/Packet_lo_pl/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wordCount = internal unnamed_addr global i16 0, align 2
@version_V = internal unnamed_addr global i4 0
@totalLength_V = internal unnamed_addr global i16 0
@srcIP_V = internal unnamed_addr global i32 0
@sendCount = internal unnamed_addr global i16 0, align 2
@registeredFilters_V = internal unnamed_addr global i8 0
@protocol_V = internal unnamed_addr global i8 0
@parser2dpi_OC_V_OC_user_OC_V_s = internal unnamed_addr constant [20 x i8] c"parser2dpi.V.user.V\00"
@parser2dpi_OC_V_OC_strb_OC_V_s = internal unnamed_addr constant [20 x i8] c"parser2dpi.V.strb.V\00"
@parser2dpi_OC_V_OC_last_OC_V_s = internal unnamed_addr constant [20 x i8] c"parser2dpi.V.last.V\00"
@parser2dpi_OC_V_OC_data_OC_V_s = internal unnamed_addr constant [20 x i8] c"parser2dpi.V.data.V\00"
@parser2dpi_V_user_V = internal global i128 0
@parser2dpi_V_strb_V = internal global i8 0
@parser2dpi_V_last_V = internal global i1 false
@parser2dpi_V_data_V = internal global i64 0
@newFilterIP_V = internal unnamed_addr global i32 0
@llvm_global_ctors_1 = appending global [3 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a8, void ()* @_GLOBAL__I_a31]
@llvm_global_ctors_0 = appending global [3 x i32] [i32 65535, i32 65535, i32 65535]
@ident_V = internal unnamed_addr global i16 0
@hlsDPI_str = internal unnamed_addr constant [7 x i8] c"hlsDPI\00"
@headerCRC_V = internal unnamed_addr global i16 0
@fragOffset_V = internal unnamed_addr global i13 0
@flags_V = internal unnamed_addr global i3 0
@filterTable_filterEntries_vali_7 = internal unnamed_addr global i1 false
@filterTable_filterEntries_vali_6 = internal unnamed_addr global i1 false
@filterTable_filterEntries_vali_5 = internal unnamed_addr global i1 false
@filterTable_filterEntries_vali_4 = internal unnamed_addr global i1 false
@filterTable_filterEntries_vali_3 = internal unnamed_addr global i1 false
@filterTable_filterEntries_vali_2 = internal unnamed_addr global i1 false
@filterTable_filterEntries_vali_1 = internal unnamed_addr global i1 false
@filterTable_filterEntries_vali = internal unnamed_addr global i1 false
@filterTable_filterEntries_ipAd_7 = internal unnamed_addr global i32 0
@filterTable_filterEntries_ipAd_6 = internal unnamed_addr global i32 0
@filterTable_filterEntries_ipAd_5 = internal unnamed_addr global i32 0
@filterTable_filterEntries_ipAd_4 = internal unnamed_addr global i32 0
@filterTable_filterEntries_ipAd_3 = internal unnamed_addr global i32 0
@filterTable_filterEntries_ipAd_2 = internal unnamed_addr global i32 0
@filterTable_filterEntries_ipAd_1 = internal unnamed_addr global i32 0
@filterTable_filterEntries_ipAd = internal unnamed_addr global i32 0
@ethType_V = internal unnamed_addr global i16 0
@dstIP_V = internal unnamed_addr global i32 0
@dpiState = internal unnamed_addr global i3 0, align 1
@dpiDetectState = internal unnamed_addr global i2 0, align 1
@dpiCode_V = internal unnamed_addr global i16 0
@dmp_prevWord_user_V = internal unnamed_addr global i128 0
@dmp_prevWord_strb_V = internal unnamed_addr global i8 0
@dmp_prevWord_last_V = internal unnamed_addr global i1 false
@dmp_prevWord_data_V = internal unnamed_addr global i64 0
@dmp_macType_V = internal unnamed_addr global i16 0
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@TTL_V = internal unnamed_addr global i8 0
@MAC_SRC_V = internal unnamed_addr global i48 0
@IHL_V = internal unnamed_addr global i4 0
@ECN_V = internal unnamed_addr global i2 0
@p_str313 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i48 @llvm.part.set.i48.i32(i48, i32, i32, i32) nounwind readnone

declare i48 @llvm.part.set.i48.i16(i48, i16, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i16(i32, i16, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @hlsDPI(i64* %inData_V_data_V, i8* %inData_V_strb_V, i128* %inData_V_user_V, i1* %inData_V_last_V, i64* %outData_V_data_V, i8* %outData_V_strb_V, i128* %outData_V_user_V, i1* %outData_V_last_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str12) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @parser2dpi_OC_V_OC_data_OC_V_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 16, i32 16, i64* @parser2dpi_V_data_V, i64* @parser2dpi_V_data_V)
  call void (...)* @_ssdm_op_SpecInterface(i64* @parser2dpi_V_data_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_19 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @parser2dpi_OC_V_OC_last_OC_V_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 16, i32 16, i1* @parser2dpi_V_last_V, i1* @parser2dpi_V_last_V)
  call void (...)* @_ssdm_op_SpecInterface(i1* @parser2dpi_V_last_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_20 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @parser2dpi_OC_V_OC_strb_OC_V_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 16, i32 16, i8* @parser2dpi_V_strb_V, i8* @parser2dpi_V_strb_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* @parser2dpi_V_strb_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_21 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @parser2dpi_OC_V_OC_user_OC_V_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 16, i32 16, i128* @parser2dpi_V_user_V, i128* @parser2dpi_V_user_V)
  call void (...)* @_ssdm_op_SpecInterface(i128* @parser2dpi_V_user_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %inData_V_data_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inData_V_strb_V), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %inData_V_user_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inData_V_last_V), !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %outData_V_data_V), !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outData_V_strb_V), !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %outData_V_user_V), !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outData_V_last_V), !map !37
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @hlsDPI_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %inData_V_data_V, i8* %inData_V_strb_V, i128* %inData_V_user_V, i1* %inData_V_last_V, [5 x i8]* @p_str313, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %outData_V_data_V, i8* %outData_V_strb_V, i128* %outData_V_user_V, i1* %outData_V_last_V, [5 x i8]* @p_str313, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12) nounwind
  call fastcc void @hlsDPI_ethernetDetection(i64* %inData_V_data_V, i8* %inData_V_strb_V, i128* %inData_V_user_V, i1* %inData_V_last_V)
  call fastcc void @hlsDPI_dpi(i64* %outData_V_data_V, i8* %outData_V_strb_V, i128* %outData_V_user_V, i1* %outData_V_last_V)
  ret void
}

define internal fastcc void @hlsDPI_ethernetDetection(i64* %inData_V_data_V, i8* %inData_V_strb_V, i128* %inData_V_user_V, i1* %inData_V_last_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i128* @parser2dpi_V_user_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* @parser2dpi_V_strb_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i1* @parser2dpi_V_last_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i64* @parser2dpi_V_data_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i64* %inData_V_data_V, i8* %inData_V_strb_V, i128* %inData_V_user_V, i1* %inData_V_last_V, [5 x i8]* @p_str313, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %dpiDetectState_load = load i2* @dpiDetectState, align 1
  %tmp_data_V_3 = load i64* @dmp_prevWord_data_V, align 8
  %tmp_strb_V_3 = load i8* @dmp_prevWord_strb_V, align 1
  %tmp_user_V_3 = load i128* @dmp_prevWord_user_V, align 8
  %tmp_last_V_3 = load i1* @dmp_prevWord_last_V, align 1
  %dmp_macType_V_load = load i16* @dmp_macType_V, align 2
  switch i2 %dpiDetectState_load, label %._crit_edge108 [
    i2 0, label %0
    i2 1, label %2
    i2 -2, label %5
    i2 -1, label %9
  ]

; <label>:0                                       ; preds = %codeRepl
  %tmp = call i1 @_ssdm_op_NbReadReq.axis.i64P.i8P.i128P.i1P(i64* %inData_V_data_V, i8* %inData_V_strb_V, i128* %inData_V_user_V, i1* %inData_V_last_V, i32 1)
  br i1 %tmp, label %1, label %._crit_edge109

; <label>:1                                       ; preds = %0
  %empty = call { i64, i8, i128, i1 } @_ssdm_op_Read.axis.volatile.i64P.i8P.i128P.i1P(i64* %inData_V_data_V, i8* %inData_V_strb_V, i128* %inData_V_user_V, i1* %inData_V_last_V)
  %tmp_data_V = extractvalue { i64, i8, i128, i1 } %empty, 0
  %tmp_strb_V = extractvalue { i64, i8, i128, i1 } %empty, 1
  %tmp_user_V = extractvalue { i64, i8, i128, i1 } %empty, 2
  %tmp_last_V = extractvalue { i64, i8, i128, i1 } %empty, 3
  store i64 %tmp_data_V, i64* @dmp_prevWord_data_V, align 16
  store i8 %tmp_strb_V, i8* @dmp_prevWord_strb_V, align 8
  store i128 %tmp_user_V, i128* @dmp_prevWord_user_V, align 16
  store i1 %tmp_last_V, i1* @dmp_prevWord_last_V, align 16
  store i2 1, i2* @dpiDetectState, align 1
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %1, %0
  br label %._crit_edge108

; <label>:2                                       ; preds = %codeRepl
  %tmp_1 = call i1 @_ssdm_op_NbReadReq.axis.i64P.i8P.i128P.i1P(i64* %inData_V_data_V, i8* %inData_V_strb_V, i128* %inData_V_user_V, i1* %inData_V_last_V, i32 1)
  br i1 %tmp_1, label %3, label %._crit_edge110

; <label>:3                                       ; preds = %2
  %empty_22 = call { i64, i8, i128, i1 } @_ssdm_op_Read.axis.volatile.i64P.i8P.i128P.i1P(i64* %inData_V_data_V, i8* %inData_V_strb_V, i128* %inData_V_user_V, i1* %inData_V_last_V)
  %tmp_data_V_4 = extractvalue { i64, i8, i128, i1 } %empty_22, 0
  %tmp_strb_V_1 = extractvalue { i64, i8, i128, i1 } %empty_22, 1
  %tmp_user_V_1 = extractvalue { i64, i8, i128, i1 } %empty_22, 2
  %tmp_last_V_1 = extractvalue { i64, i8, i128, i1 } %empty_22, 3
  %p_Result_4 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_4, i32 40, i32 47)
  %p_Result_6 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_4, i32 32, i32 39)
  %p_Result_s = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %p_Result_6, i8 %p_Result_4)
  store i16 %p_Result_s, i16* @dmp_macType_V, align 2
  %tmp_7 = icmp eq i16 %p_Result_s, 2048
  br i1 %tmp_7, label %4, label %._crit_edge111

; <label>:4                                       ; preds = %3
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P.i8P.i128P.i1P(i64* @parser2dpi_V_data_V, i8* @parser2dpi_V_strb_V, i128* @parser2dpi_V_user_V, i1* @parser2dpi_V_last_V, i64 %tmp_data_V_3, i8 %tmp_strb_V_3, i128 %tmp_user_V_3, i1 %tmp_last_V_3)
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %4, %3
  store i64 %tmp_data_V_4, i64* @dmp_prevWord_data_V, align 16
  store i8 %tmp_strb_V_1, i8* @dmp_prevWord_strb_V, align 8
  store i128 %tmp_user_V_1, i128* @dmp_prevWord_user_V, align 16
  store i1 %tmp_last_V_1, i1* @dmp_prevWord_last_V, align 16
  store i2 -2, i2* @dpiDetectState, align 1
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %._crit_edge111, %2
  br label %._crit_edge108

; <label>:5                                       ; preds = %codeRepl
  %tmp_2 = call i1 @_ssdm_op_NbReadReq.axis.i64P.i8P.i128P.i1P(i64* %inData_V_data_V, i8* %inData_V_strb_V, i128* %inData_V_user_V, i1* %inData_V_last_V, i32 1)
  br i1 %tmp_2, label %6, label %._crit_edge112

; <label>:6                                       ; preds = %5
  %empty_23 = call { i64, i8, i128, i1 } @_ssdm_op_Read.axis.volatile.i64P.i8P.i128P.i1P(i64* %inData_V_data_V, i8* %inData_V_strb_V, i128* %inData_V_user_V, i1* %inData_V_last_V)
  %tmp_data_V_2 = extractvalue { i64, i8, i128, i1 } %empty_23, 0
  %tmp_strb_V_2 = extractvalue { i64, i8, i128, i1 } %empty_23, 1
  %tmp_user_V_2 = extractvalue { i64, i8, i128, i1 } %empty_23, 2
  %tmp_last_V_2 = extractvalue { i64, i8, i128, i1 } %empty_23, 3
  %tmp_9 = icmp eq i16 %dmp_macType_V_load, 2048
  br i1 %tmp_9, label %7, label %._crit_edge113

; <label>:7                                       ; preds = %6
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P.i8P.i128P.i1P(i64* @parser2dpi_V_data_V, i8* @parser2dpi_V_strb_V, i128* @parser2dpi_V_user_V, i1* @parser2dpi_V_last_V, i64 %tmp_data_V_3, i8 %tmp_strb_V_3, i128 %tmp_user_V_3, i1 %tmp_last_V_3)
  br label %._crit_edge113

._crit_edge113:                                   ; preds = %7, %6
  store i64 %tmp_data_V_2, i64* @dmp_prevWord_data_V, align 16
  store i8 %tmp_strb_V_2, i8* @dmp_prevWord_strb_V, align 8
  store i128 %tmp_user_V_2, i128* @dmp_prevWord_user_V, align 16
  store i1 %tmp_last_V_2, i1* @dmp_prevWord_last_V, align 16
  br i1 %tmp_last_V_2, label %8, label %._crit_edge114

; <label>:8                                       ; preds = %._crit_edge113
  store i2 -1, i2* @dpiDetectState, align 1
  br label %._crit_edge114

._crit_edge114:                                   ; preds = %8, %._crit_edge113
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %._crit_edge114, %5
  br label %._crit_edge108

; <label>:9                                       ; preds = %codeRepl
  %tmp_4 = icmp eq i16 %dmp_macType_V_load, 2048
  br i1 %tmp_4, label %10, label %._crit_edge115

; <label>:10                                      ; preds = %9
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P.i8P.i128P.i1P(i64* @parser2dpi_V_data_V, i8* @parser2dpi_V_strb_V, i128* @parser2dpi_V_user_V, i1* @parser2dpi_V_last_V, i64 %tmp_data_V_3, i8 %tmp_strb_V_3, i128 %tmp_user_V_3, i1 %tmp_last_V_3)
  br label %._crit_edge115

._crit_edge115:                                   ; preds = %10, %9
  store i2 0, i2* @dpiDetectState, align 1
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge115, %._crit_edge112, %._crit_edge110, %._crit_edge109, %codeRepl
  ret void
}

define internal fastcc void @hlsDPI_dpi(i64* %outData2merge_V_data_V, i8* %outData2merge_V_strb_V, i128* %outData2merge_V_user_V, i1* %outData2merge_V_last_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i128* @parser2dpi_V_user_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* @parser2dpi_V_strb_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i1* @parser2dpi_V_last_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i64* @parser2dpi_V_data_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i64* %outData2merge_V_data_V, i8* %outData2merge_V_strb_V, i128* %outData2merge_V_user_V, i1* %outData2merge_V_last_V, [5 x i8]* @p_str313, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %dpiState_load = load i3* @dpiState, align 1
  %p_Val2_2 = load i48* @MAC_SRC_V, align 8
  %p_Val2_1 = load i32* @srcIP_V, align 4
  %tempEntry_ipAddress_V = load i32* @newFilterIP_V, align 4
  %filterTable_filterEntries_vali = load i1* @filterTable_filterEntries_vali_7, align 1
  %filterTable_filterEntries_ipAd = load i32* @filterTable_filterEntries_ipAd_7, align 4
  %filterTable_filterEntries_vali_1 = load i1* @filterTable_filterEntries_vali_6, align 1
  %filterTable_filterEntries_ipAd_1 = load i32* @filterTable_filterEntries_ipAd_6, align 4
  %filterTable_filterEntries_vali_2 = load i1* @filterTable_filterEntries_vali_5, align 1
  %filterTable_filterEntries_ipAd_2 = load i32* @filterTable_filterEntries_ipAd_5, align 4
  %filterTable_filterEntries_vali_3 = load i1* @filterTable_filterEntries_vali_4, align 1
  %filterTable_filterEntries_ipAd_3 = load i32* @filterTable_filterEntries_ipAd_4, align 4
  %filterTable_filterEntries_vali_4 = load i1* @filterTable_filterEntries_vali_3, align 1
  %filterTable_filterEntries_ipAd_4 = load i32* @filterTable_filterEntries_ipAd_3, align 4
  %filterTable_filterEntries_vali_5 = load i1* @filterTable_filterEntries_vali_2, align 1
  %filterTable_filterEntries_ipAd_5 = load i32* @filterTable_filterEntries_ipAd_2, align 4
  %filterTable_filterEntries_vali_6 = load i1* @filterTable_filterEntries_vali_1, align 1
  %filterTable_filterEntries_ipAd_6 = load i32* @filterTable_filterEntries_ipAd_1, align 4
  %filterTable_filterEntries_vali_7 = load i1* @filterTable_filterEntries_vali, align 1
  %filterTable_filterEntries_ipAd_7 = load i32* @filterTable_filterEntries_ipAd, align 4
  %t_V = load i8* @registeredFilters_V, align 1
  switch i3 %dpiState_load, label %._crit_edge1249 [
    i3 0, label %0
    i3 1, label %1
    i3 2, label %10
    i3 3, label %13
    i3 -4, label %15
  ]

; <label>:0                                       ; preds = %codeRepl
  store i16 0, i16* @sendCount, align 2
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P.i8P.i128P.i1P(i64* @parser2dpi_V_data_V, i8* @parser2dpi_V_strb_V, i128* @parser2dpi_V_user_V, i1* @parser2dpi_V_last_V, i32 1)
  %storemerge1 = zext i1 %tmp to i3
  store i3 %storemerge1, i3* @dpiState, align 1
  br label %._crit_edge1249

; <label>:1                                       ; preds = %codeRepl
  %tmp_3 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P.i8P.i128P.i1P(i64* @parser2dpi_V_data_V, i8* @parser2dpi_V_strb_V, i128* @parser2dpi_V_user_V, i1* @parser2dpi_V_last_V, i32 1)
  br i1 %tmp_3, label %2, label %._crit_edge1250

; <label>:2                                       ; preds = %1
  %empty = call { i64, i8, i128, i1 } @_ssdm_op_Read.ap_fifo.volatile.i64P.i8P.i128P.i1P(i64* @parser2dpi_V_data_V, i8* @parser2dpi_V_strb_V, i128* @parser2dpi_V_user_V, i1* @parser2dpi_V_last_V)
  %tmp_data_V_5 = extractvalue { i64, i8, i128, i1 } %empty, 0
  %tmp_last_V = extractvalue { i64, i8, i128, i1 } %empty, 3
  %wordCount_load = load i16* @wordCount, align 2
  %p_Val2_3 = load i32* @dstIP_V, align 4
  %dpiCode_V_load = load i16* @dpiCode_V, align 2
  switch i16 %wordCount_load, label %._crit_edge1251 [
    i16 0, label %3
    i16 1, label %4
    i16 2, label %5
    i16 3, label %6
    i16 4, label %7
  ]

; <label>:3                                       ; preds = %2
  store i16 0, i16* @sendCount, align 2
  %p_Result_4 = call i16 @_ssdm_op_PartSelect.i16.i64.i32.i32(i64 %tmp_data_V_5, i32 48, i32 63)
  %p_Result_s = call i48 @llvm.part.set.i48.i16(i48 %p_Val2_2, i16 %p_Result_4, i32 0, i32 15)
  store i48 %p_Result_s, i48* @MAC_SRC_V, align 8
  br label %._crit_edge1251

; <label>:4                                       ; preds = %2
  %tmp_15 = trunc i64 %tmp_data_V_5 to i32
  %p_Result_6 = call i48 @llvm.part.set.i48.i32(i48 %p_Val2_2, i32 %tmp_15, i32 16, i32 47)
  store i48 %p_Result_6, i48* @MAC_SRC_V, align 8
  %p_Result_7 = call i16 @_ssdm_op_PartSelect.i16.i64.i32.i32(i64 %tmp_data_V_5, i32 32, i32 47)
  store i16 %p_Result_7, i16* @ethType_V, align 2
  %p_Result_8 = call i4 @_ssdm_op_PartSelect.i4.i64.i32.i32(i64 %tmp_data_V_5, i32 48, i32 51)
  store i4 %p_Result_8, i4* @version_V, align 1
  %p_Result_9 = call i4 @_ssdm_op_PartSelect.i4.i64.i32.i32(i64 %tmp_data_V_5, i32 52, i32 55)
  store i4 %p_Result_9, i4* @IHL_V, align 1
  %p_Result_s_24 = call i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64 %tmp_data_V_5, i32 62, i32 63)
  store i2 %p_Result_s_24, i2* @ECN_V, align 1
  br label %._crit_edge1251

; <label>:5                                       ; preds = %2
  %tmp_16 = trunc i64 %tmp_data_V_5 to i16
  store i16 %tmp_16, i16* @totalLength_V, align 2
  %p_Result_1 = call i16 @_ssdm_op_PartSelect.i16.i64.i32.i32(i64 %tmp_data_V_5, i32 16, i32 31)
  store i16 %p_Result_1, i16* @ident_V, align 2
  %p_Result_3 = call i3 @_ssdm_op_PartSelect.i3.i64.i32.i32(i64 %tmp_data_V_5, i32 32, i32 34)
  store i3 %p_Result_3, i3* @flags_V, align 1
  %p_Result_5 = call i13 @_ssdm_op_PartSelect.i13.i64.i32.i32(i64 %tmp_data_V_5, i32 35, i32 47)
  store i13 %p_Result_5, i13* @fragOffset_V, align 2
  %p_Result_10 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_5, i32 48, i32 55)
  store i8 %p_Result_10, i8* @TTL_V, align 1
  %p_Result_11 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_5, i32 56, i32 63)
  store i8 %p_Result_11, i8* @protocol_V, align 1
  br label %._crit_edge1251

; <label>:6                                       ; preds = %2
  %tmp_17 = trunc i64 %tmp_data_V_5 to i16
  store i16 %tmp_17, i16* @headerCRC_V, align 2
  %p_Result_12 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %tmp_data_V_5, i32 16, i32 47)
  store i32 %p_Result_12, i32* @srcIP_V, align 4
  %p_Result_13 = call i16 @_ssdm_op_PartSelect.i16.i64.i32.i32(i64 %tmp_data_V_5, i32 48, i32 63)
  %p_Result_14 = call i32 @llvm.part.set.i32.i16(i32 %p_Val2_3, i16 %p_Result_13, i32 0, i32 15)
  store i32 %p_Result_14, i32* @dstIP_V, align 4
  br label %._crit_edge1251

; <label>:7                                       ; preds = %2
  %tmp_18 = trunc i64 %tmp_data_V_5 to i16
  %p_Result_15 = call i32 @llvm.part.set.i32.i16(i32 %p_Val2_3, i16 %tmp_18, i32 16, i32 31)
  store i32 %p_Result_15, i32* @dstIP_V, align 4
  %p_Result_16 = call i16 @_ssdm_op_PartSelect.i16.i64.i32.i32(i64 %tmp_data_V_5, i32 16, i32 31)
  store i16 %p_Result_16, i16* @dpiCode_V, align 2
  %p_Result_17 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %tmp_data_V_5, i32 32, i32 63)
  store i32 %p_Result_17, i32* @newFilterIP_V, align 4
  br label %._crit_edge1251

._crit_edge1251:                                  ; preds = %7, %6, %5, %4, %3, %2
  %dstIP_V_loc = phi i32 [ %p_Result_15, %7 ], [ %p_Result_14, %6 ], [ %p_Val2_3, %5 ], [ %p_Val2_3, %4 ], [ %p_Val2_3, %3 ], [ %p_Val2_3, %2 ]
  %dpiCode_V_loc = phi i16 [ %p_Result_16, %7 ], [ %dpiCode_V_load, %6 ], [ %dpiCode_V_load, %5 ], [ %dpiCode_V_load, %4 ], [ %dpiCode_V_load, %3 ], [ %dpiCode_V_load, %2 ]
  br i1 %tmp_last_V, label %_ifconv, label %8

_ifconv:                                          ; preds = %._crit_edge1251
  %tmp_1 = icmp eq i16 %dpiCode_V_loc, 4095
  %tmp_2 = icmp eq i32 %dstIP_V_loc, 16843009
  %or_cond_25 = and i1 %tmp_1, %tmp_2
  %tmp_7 = icmp eq i16 %dpiCode_V_loc, 1
  %tmp_8 = icmp eq i16 %dpiCode_V_loc, 2
  %or_cond2 = and i1 %tmp_8, %tmp_2
  %tmp4 = xor i1 %or_cond_25, %tmp_2
  %sel_tmp2 = and i1 %tmp4, %tmp_7
  %newSel = select i1 %sel_tmp2, i3 2, i3 -4
  %or_cond = or i1 %sel_tmp2, %or_cond_25
  %newSel5_cast_cast = select i1 %or_cond2, i3 3, i3 0
  %newSel7 = select i1 %or_cond, i3 %newSel, i3 %newSel5_cast_cast
  store i3 %newSel7, i3* @dpiState, align 1
  br label %9

; <label>:8                                       ; preds = %._crit_edge1251
  %tmp_6 = add i16 %wordCount_load, 1
  br label %9

; <label>:9                                       ; preds = %8, %_ifconv
  %storemerge = phi i16 [ %tmp_6, %8 ], [ 0, %_ifconv ]
  store i16 %storemerge, i16* @wordCount, align 2
  br label %._crit_edge1250

._crit_edge1250:                                  ; preds = %9, %1
  br label %._crit_edge1249

; <label>:10                                      ; preds = %codeRepl
  %tmp_9 = icmp eq i32 %tempEntry_ipAddress_V, %filterTable_filterEntries_ipAd
  %or_cond3 = and i1 %filterTable_filterEntries_vali, %tmp_9
  br i1 %or_cond3, label %._crit_edge1261.loopexit, label %._crit_edge10.i.0

._crit_edge10.i.0:                                ; preds = %10
  %tmp_16_1 = icmp eq i32 %tempEntry_ipAddress_V, %filterTable_filterEntries_ipAd_1
  %or_cond5 = and i1 %filterTable_filterEntries_vali_1, %tmp_16_1
  br i1 %or_cond5, label %._crit_edge1261.loopexit, label %._crit_edge10.i.1

._crit_edge10.i.1:                                ; preds = %._crit_edge10.i.0
  %tmp_16_2 = icmp eq i32 %tempEntry_ipAddress_V, %filterTable_filterEntries_ipAd_2
  %or_cond7 = and i1 %filterTable_filterEntries_vali_2, %tmp_16_2
  br i1 %or_cond7, label %._crit_edge1261.loopexit, label %._crit_edge10.i.2

._crit_edge10.i.2:                                ; preds = %._crit_edge10.i.1
  %tmp_16_3 = icmp eq i32 %tempEntry_ipAddress_V, %filterTable_filterEntries_ipAd_3
  %or_cond9 = and i1 %filterTable_filterEntries_vali_3, %tmp_16_3
  br i1 %or_cond9, label %._crit_edge1261.loopexit, label %._crit_edge10.i.3

._crit_edge10.i.3:                                ; preds = %._crit_edge10.i.2
  %tmp_16_4 = icmp eq i32 %tempEntry_ipAddress_V, %filterTable_filterEntries_ipAd_4
  %or_cond10 = and i1 %filterTable_filterEntries_vali_4, %tmp_16_4
  br i1 %or_cond10, label %._crit_edge1261.loopexit, label %._crit_edge10.i.4

._crit_edge10.i.4:                                ; preds = %._crit_edge10.i.3
  %tmp_16_5 = icmp eq i32 %tempEntry_ipAddress_V, %filterTable_filterEntries_ipAd_5
  %or_cond12 = and i1 %filterTable_filterEntries_vali_5, %tmp_16_5
  br i1 %or_cond12, label %._crit_edge1261.loopexit, label %._crit_edge10.i.5

._crit_edge10.i.5:                                ; preds = %._crit_edge10.i.4
  %tmp_16_6 = icmp eq i32 %tempEntry_ipAddress_V, %filterTable_filterEntries_ipAd_6
  %or_cond14 = and i1 %filterTable_filterEntries_vali_6, %tmp_16_6
  br i1 %or_cond14, label %._crit_edge1261.loopexit, label %._crit_edge10.i.6

._crit_edge10.i.6:                                ; preds = %._crit_edge10.i.5
  %tmp_16_7 = icmp eq i32 %tempEntry_ipAddress_V, %filterTable_filterEntries_ipAd_7
  %or_cond16 = and i1 %filterTable_filterEntries_vali_7, %tmp_16_7
  br i1 %or_cond16, label %._crit_edge1261.loopexit, label %.critedge

.critedge:                                        ; preds = %._crit_edge10.i.6
  %brmerge_demorgan = and i1 %filterTable_filterEntries_vali, %filterTable_filterEntries_vali_1
  %p_mux_cast = zext i1 %filterTable_filterEntries_vali to i2
  %brmerge82_demorgan = and i1 %filterTable_filterEntries_vali_2, %brmerge_demorgan
  %brmerge83_demorgan = and i1 %filterTable_filterEntries_vali_3, %brmerge82_demorgan
  %p_mux_mux = select i1 %brmerge82_demorgan, i2 -1, i2 -2
  %p_mux_mux_mux = select i1 %brmerge_demorgan, i2 %p_mux_mux, i2 %p_mux_cast
  %p_mux_mux_mux_cast = zext i2 %p_mux_mux_mux to i3
  %brmerge84_demorgan = and i1 %filterTable_filterEntries_vali_4, %brmerge83_demorgan
  %brmerge85_demorgan = and i1 %filterTable_filterEntries_vali_5, %brmerge84_demorgan
  %p_mux_mux_mux_mux = select i1 %brmerge84_demorgan, i3 -3, i3 -4
  %p_mux_mux_mux_mux_mux = select i1 %brmerge83_demorgan, i3 %p_mux_mux_mux_mux, i3 %p_mux_mux_mux_cast
  %brmerge86_demorgan = and i1 %filterTable_filterEntries_vali_6, %brmerge85_demorgan
  %brmerge87_demorgan = and i1 %filterTable_filterEntries_vali_7, %brmerge86_demorgan
  %p_mux_mux_mux_mux_mux_mux_cast_s = select i1 %brmerge86_demorgan, i3 -1, i3 -2
  %p_mux_mux_mux_mux_mux_mux_mux = select i1 %brmerge85_demorgan, i3 %p_mux_mux_mux_mux_mux_mux_cast_s, i3 %p_mux_mux_mux_mux_mux
  br i1 %brmerge87_demorgan, label %write.exit, label %11

; <label>:11                                      ; preds = %.critedge
  switch i3 %p_mux_mux_mux_mux_mux_mux_mux, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ]

branch16:                                         ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  switch i3 %p_mux_mux_mux_mux_mux_mux_mux, label %branch39 [
    i3 0, label %branch32
    i3 1, label %branch33
    i3 2, label %branch34
    i3 3, label %branch35
    i3 -4, label %branch36
    i3 -3, label %branch37
    i3 -2, label %branch38
  ]

; <label>:12                                      ; preds = %branch39, %branch38, %branch37, %branch36, %branch35, %branch34, %branch33, %branch32
  br label %write.exit

write.exit:                                       ; preds = %12, %.critedge
  %tmp_11 = add i8 %t_V, 1
  store i8 %tmp_11, i8* @registeredFilters_V, align 1
  br label %._crit_edge1261

._crit_edge1261.loopexit:                         ; preds = %._crit_edge10.i.6, %._crit_edge10.i.5, %._crit_edge10.i.4, %._crit_edge10.i.3, %._crit_edge10.i.2, %._crit_edge10.i.1, %._crit_edge10.i.0, %10
  br label %._crit_edge1261

._crit_edge1261:                                  ; preds = %._crit_edge1261.loopexit, %write.exit
  store i3 0, i3* @dpiState, align 1
  br label %._crit_edge1249

; <label>:13                                      ; preds = %codeRepl
  %tmp_10 = icmp eq i32 %tempEntry_ipAddress_V, %filterTable_filterEntries_ipAd
  %or_cond4 = and i1 %filterTable_filterEntries_vali, %tmp_10
  br i1 %or_cond4, label %.critedge104, label %._crit_edge10.i1295.0

.critedge104:                                     ; preds = %._crit_edge10.i1295.4, %._crit_edge10.i1295.3, %._crit_edge10.i1295.2, %._crit_edge10.i1295.1, %._crit_edge10.i1295.0, %compare.exit1297.7, %compare.exit1297.6, %13
  %filterTable_filterEntries_vali_8 = phi i3 [ -2, %compare.exit1297.6 ], [ -1, %compare.exit1297.7 ], [ 0, %13 ], [ 1, %._crit_edge10.i1295.0 ], [ 2, %._crit_edge10.i1295.1 ], [ 3, %._crit_edge10.i1295.2 ], [ -4, %._crit_edge10.i1295.3 ], [ -3, %._crit_edge10.i1295.4 ]
  switch i3 %filterTable_filterEntries_vali_8, label %branch31 [
    i3 0, label %branch24
    i3 1, label %branch25
    i3 2, label %branch26
    i3 3, label %branch27
    i3 -4, label %branch28
    i3 -3, label %branch29
    i3 -2, label %branch30
  ]

; <label>:14                                      ; preds = %branch31, %branch30, %branch29, %branch28, %branch27, %branch26, %branch25, %branch24
  br label %clear.exit

compare.exit1297.6:                               ; preds = %._crit_edge10.i1295.6, %._crit_edge10.i1295.5
  %tmp_30_6 = icmp eq i32 %tempEntry_ipAddress_V, %filterTable_filterEntries_ipAd_6
  %or_cond18 = and i1 %filterTable_filterEntries_vali_6, %tmp_30_6
  br i1 %or_cond18, label %.critedge104, label %compare.exit1297.7

compare.exit1297.7:                               ; preds = %compare.exit1297.6
  %tmp_30_7 = icmp eq i32 %tempEntry_ipAddress_V, %filterTable_filterEntries_ipAd_7
  %or_cond19 = and i1 %filterTable_filterEntries_vali_7, %tmp_30_7
  br i1 %or_cond19, label %.critedge104, label %clear.exit

clear.exit:                                       ; preds = %compare.exit1297.7, %14
  %tmp_12 = add i8 %t_V, -1
  store i8 %tmp_12, i8* @registeredFilters_V, align 1
  br label %._crit_edge1262

._crit_edge10.i1295.0:                            ; preds = %13
  %tmp_18_1 = icmp eq i32 %tempEntry_ipAddress_V, %filterTable_filterEntries_ipAd_1
  %or_cond6 = and i1 %filterTable_filterEntries_vali_1, %tmp_18_1
  br i1 %or_cond6, label %.critedge104, label %._crit_edge10.i1295.1

._crit_edge10.i1295.1:                            ; preds = %._crit_edge10.i1295.0
  %tmp_18_2 = icmp eq i32 %tempEntry_ipAddress_V, %filterTable_filterEntries_ipAd_2
  %or_cond8 = and i1 %filterTable_filterEntries_vali_2, %tmp_18_2
  br i1 %or_cond8, label %.critedge104, label %._crit_edge10.i1295.2

._crit_edge10.i1295.2:                            ; preds = %._crit_edge10.i1295.1
  %tmp_18_3 = icmp eq i32 %tempEntry_ipAddress_V, %filterTable_filterEntries_ipAd_3
  %or_cond1 = and i1 %filterTable_filterEntries_vali_3, %tmp_18_3
  br i1 %or_cond1, label %.critedge104, label %._crit_edge10.i1295.3

._crit_edge10.i1295.3:                            ; preds = %._crit_edge10.i1295.2
  %tmp_18_4 = icmp eq i32 %tempEntry_ipAddress_V, %filterTable_filterEntries_ipAd_4
  %or_cond11 = and i1 %filterTable_filterEntries_vali_4, %tmp_18_4
  br i1 %or_cond11, label %.critedge104, label %._crit_edge10.i1295.4

._crit_edge10.i1295.4:                            ; preds = %._crit_edge10.i1295.3
  %tmp_18_5 = icmp eq i32 %tempEntry_ipAddress_V, %filterTable_filterEntries_ipAd_5
  %or_cond13 = and i1 %filterTable_filterEntries_vali_5, %tmp_18_5
  br i1 %or_cond13, label %.critedge104, label %._crit_edge10.i1295.5

._crit_edge10.i1295.5:                            ; preds = %._crit_edge10.i1295.4
  %tmp_18_6 = icmp eq i32 %tempEntry_ipAddress_V, %filterTable_filterEntries_ipAd_6
  %or_cond15 = and i1 %filterTable_filterEntries_vali_6, %tmp_18_6
  br i1 %or_cond15, label %compare.exit1297.6, label %._crit_edge10.i1295.6

._crit_edge10.i1295.6:                            ; preds = %._crit_edge10.i1295.5
  %tmp_18_7 = icmp eq i32 %tempEntry_ipAddress_V, %filterTable_filterEntries_ipAd_7
  %or_cond17 = and i1 %filterTable_filterEntries_vali_7, %tmp_18_7
  br i1 %or_cond17, label %compare.exit1297.6, label %._crit_edge1262

._crit_edge1262:                                  ; preds = %._crit_edge10.i1295.6, %clear.exit
  store i3 0, i3* @dpiState, align 1
  br label %._crit_edge1249

; <label>:15                                      ; preds = %codeRepl
  %sendCount_load = load i16* @sendCount, align 2
  switch i16 %sendCount_load, label %._crit_edge1263 [
    i16 0, label %16
    i16 1, label %17
    i16 2, label %18
    i16 3, label %19
    i16 4, label %20
  ]

; <label>:16                                      ; preds = %15
  %p_Result_18 = call i64 @_ssdm_op_BitConcatenate.i64.i16.i48(i16 13330, i48 %p_Val2_2)
  br label %._crit_edge1263

; <label>:17                                      ; preds = %15
  %ethType_V_load = load i16* @ethType_V, align 2
  %version_V_load = load i4* @version_V, align 1
  %IHL_V_load = load i4* @IHL_V, align 1
  %ECN_V_load = load i2* @ECN_V, align 1
  %loc_V_29_trunc = zext i2 %ECN_V_load to i6
  %p_Result_19 = call i64 @_ssdm_op_BitConcatenate.i64.i2.i6.i4.i4.i16.i32(i2 0, i6 %loc_V_29_trunc, i4 %IHL_V_load, i4 %version_V_load, i16 %ethType_V_load, i32 -1416595370)
  br label %._crit_edge1263

; <label>:18                                      ; preds = %15
  %totalLength_V_load = load i16* @totalLength_V, align 2
  %ident_V_load = load i16* @ident_V, align 2
  %flags_V_load = load i3* @flags_V, align 1
  %fragOffset_V_load = load i13* @fragOffset_V, align 2
  %tmp_13 = trunc i13 %fragOffset_V_load to i3
  %tmp_4 = call i38 @_ssdm_op_BitConcatenate.i38.i3.i3.i16.i16(i3 %tmp_13, i3 %flags_V_load, i16 %ident_V_load, i16 %totalLength_V_load)
  %TTL_V_load = load i8* @TTL_V, align 1
  %protocol_V_load = load i8* @protocol_V, align 1
  %tmp_5 = zext i38 %tmp_4 to i48
  %p_Result_20 = call i64 @_ssdm_op_BitConcatenate.i64.i8.i8.i48(i8 %protocol_V_load, i8 %TTL_V_load, i48 %tmp_5)
  br label %._crit_edge1263

; <label>:19                                      ; preds = %15
  %headerCRC_V_load = load i16* @headerCRC_V, align 2
  %tmp_14 = trunc i32 %p_Val2_1 to i16
  %p_Result_21 = call i64 @_ssdm_op_BitConcatenate.i64.i16.i32.i16(i16 %tmp_14, i32 16843009, i16 %headerCRC_V_load)
  br label %._crit_edge1263

; <label>:20                                      ; preds = %15
  %p_Result_2 = call i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32 %p_Val2_1, i32 16, i32 31)
  %p_Result_22 = call i64 @_ssdm_op_BitConcatenate.i64.i24.i8.i16.i16(i24 0, i8 %t_V, i16 256, i16 %p_Result_2)
  store i3 0, i3* @dpiState, align 1
  br label %._crit_edge1263

._crit_edge1263:                                  ; preds = %20, %19, %18, %17, %16, %15
  %tmp_last_V_4 = phi i1 [ true, %20 ], [ false, %19 ], [ false, %18 ], [ false, %17 ], [ false, %16 ], [ false, %15 ]
  %tmp_strb_V = phi i4 [ 6, %20 ], [ -1, %19 ], [ -1, %18 ], [ -1, %17 ], [ -1, %16 ], [ -1, %15 ]
  %tmp_data_V = phi i64 [ %p_Result_22, %20 ], [ %p_Result_21, %19 ], [ %p_Result_20, %18 ], [ %p_Result_19, %17 ], [ %p_Result_18, %16 ], [ 0, %15 ]
  %tmp_strb_V_4 = sext i4 %tmp_strb_V to i8
  call void @_ssdm_op_Write.axis.volatile.i64P.i8P.i128P.i1P(i64* %outData2merge_V_data_V, i8* %outData2merge_V_strb_V, i128* %outData2merge_V_user_V, i1* %outData2merge_V_last_V, i64 %tmp_data_V, i8 %tmp_strb_V_4, i128 0, i1 %tmp_last_V_4)
  %tmp_s = add i16 %sendCount_load, 1
  store i16 %tmp_s, i16* @sendCount, align 2
  br label %._crit_edge1249

._crit_edge1249:                                  ; preds = %._crit_edge1263, %._crit_edge1262, %._crit_edge1261, %._crit_edge1250, %0, %codeRepl
  ret void

branch0:                                          ; preds = %11
  store i32 %tempEntry_ipAddress_V, i32* @filterTable_filterEntries_ipAd_7, align 8
  br label %branch16

branch1:                                          ; preds = %11
  store i32 %tempEntry_ipAddress_V, i32* @filterTable_filterEntries_ipAd_6, align 8
  br label %branch16

branch2:                                          ; preds = %11
  store i32 %tempEntry_ipAddress_V, i32* @filterTable_filterEntries_ipAd_5, align 8
  br label %branch16

branch3:                                          ; preds = %11
  store i32 %tempEntry_ipAddress_V, i32* @filterTable_filterEntries_ipAd_4, align 8
  br label %branch16

branch4:                                          ; preds = %11
  store i32 %tempEntry_ipAddress_V, i32* @filterTable_filterEntries_ipAd_3, align 8
  br label %branch16

branch5:                                          ; preds = %11
  store i32 %tempEntry_ipAddress_V, i32* @filterTable_filterEntries_ipAd_2, align 8
  br label %branch16

branch6:                                          ; preds = %11
  store i32 %tempEntry_ipAddress_V, i32* @filterTable_filterEntries_ipAd_1, align 8
  br label %branch16

branch7:                                          ; preds = %11
  store i32 %tempEntry_ipAddress_V, i32* @filterTable_filterEntries_ipAd, align 8
  br label %branch16

branch24:                                         ; preds = %.critedge104
  store i1 false, i1* @filterTable_filterEntries_vali_7, align 2
  br label %14

branch25:                                         ; preds = %.critedge104
  store i1 false, i1* @filterTable_filterEntries_vali_6, align 2
  br label %14

branch26:                                         ; preds = %.critedge104
  store i1 false, i1* @filterTable_filterEntries_vali_5, align 2
  br label %14

branch27:                                         ; preds = %.critedge104
  store i1 false, i1* @filterTable_filterEntries_vali_4, align 2
  br label %14

branch28:                                         ; preds = %.critedge104
  store i1 false, i1* @filterTable_filterEntries_vali_3, align 2
  br label %14

branch29:                                         ; preds = %.critedge104
  store i1 false, i1* @filterTable_filterEntries_vali_2, align 2
  br label %14

branch30:                                         ; preds = %.critedge104
  store i1 false, i1* @filterTable_filterEntries_vali_1, align 2
  br label %14

branch31:                                         ; preds = %.critedge104
  store i1 false, i1* @filterTable_filterEntries_vali, align 2
  br label %14

branch32:                                         ; preds = %branch16
  store i1 true, i1* @filterTable_filterEntries_vali_7, align 2
  br label %12

branch33:                                         ; preds = %branch16
  store i1 true, i1* @filterTable_filterEntries_vali_6, align 2
  br label %12

branch34:                                         ; preds = %branch16
  store i1 true, i1* @filterTable_filterEntries_vali_5, align 2
  br label %12

branch35:                                         ; preds = %branch16
  store i1 true, i1* @filterTable_filterEntries_vali_4, align 2
  br label %12

branch36:                                         ; preds = %branch16
  store i1 true, i1* @filterTable_filterEntries_vali_3, align 2
  br label %12

branch37:                                         ; preds = %branch16
  store i1 true, i1* @filterTable_filterEntries_vali_2, align 2
  br label %12

branch38:                                         ; preds = %branch16
  store i1 true, i1* @filterTable_filterEntries_vali_1, align 2
  br label %12

branch39:                                         ; preds = %branch16
  store i1 true, i1* @filterTable_filterEntries_vali, align 2
  br label %12
}

define weak void @_ssdm_op_Write.axis.volatile.i64P.i8P.i128P.i1P(i64*, i8*, i128*, i1*, i64, i8, i128, i1) {
entry:
  store i64 %4, i64* %0
  store i8 %5, i8* %1
  store i128 %6, i128* %2
  store i1 %7, i1* %3
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i64P.i8P.i128P.i1P(i64*, i8*, i128*, i1*, i64, i8, i128, i1) {
entry:
  %empty = call i64 @_autotb_FifoWrite_i64(i64* %0, i64 %4)
  %empty_26 = call i8 @_autotb_FifoWrite_i8(i8* %1, i8 %5)
  %empty_27 = call i128 @_autotb_FifoWrite_i128(i128* %2, i128 %6)
  %empty_28 = call i1 @_autotb_FifoWrite_i1(i1* %3, i1 %7)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak { i64, i8, i128, i1 } @_ssdm_op_Read.axis.volatile.i64P.i8P.i128P.i1P(i64*, i8*, i128*, i1*) {
entry:
  %empty = load i64* %0
  %empty_29 = load i8* %1
  %empty_30 = load i128* %2
  %empty_31 = load i1* %3
  %mrv_0 = insertvalue { i64, i8, i128, i1 } undef, i64 %empty, 0
  %mrv1 = insertvalue { i64, i8, i128, i1 } %mrv_0, i8 %empty_29, 1
  %mrv2 = insertvalue { i64, i8, i128, i1 } %mrv1, i128 %empty_30, 2
  %mrv3 = insertvalue { i64, i8, i128, i1 } %mrv2, i1 %empty_31, 3
  ret { i64, i8, i128, i1 } %mrv3
}

define weak { i64, i8, i128, i1 } @_ssdm_op_Read.ap_fifo.volatile.i64P.i8P.i128P.i1P(i64*, i8*, i128*, i1*) {
entry:
  %empty = call i64 @_autotb_FifoRead_i64(i64* %0)
  %empty_32 = call i8 @_autotb_FifoRead_i8(i8* %1)
  %empty_33 = call i128 @_autotb_FifoRead_i128(i128* %2)
  %empty_34 = call i1 @_autotb_FifoRead_i1(i1* %3)
  %mrv_0 = insertvalue { i64, i8, i128, i1 } undef, i64 %empty, 0
  %mrv1 = insertvalue { i64, i8, i128, i1 } %mrv_0, i8 %empty_32, 1
  %mrv2 = insertvalue { i64, i8, i128, i1 } %mrv1, i128 %empty_33, 2
  %mrv3 = insertvalue { i64, i8, i128, i1 } %mrv2, i1 %empty_34, 3
  ret { i64, i8, i128, i1 } %mrv3
}

define weak i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_35 = trunc i64 %empty to i8
  ret i8 %empty_35
}

define weak i4 @_ssdm_op_PartSelect.i4.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_36 = trunc i64 %empty to i4
  ret i4 %empty_36
}

define weak i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_37 = trunc i64 %empty to i32
  ret i32 %empty_37
}

define weak i3 @_ssdm_op_PartSelect.i3.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_38 = trunc i64 %empty to i3
  ret i3 %empty_38
}

declare i3 @_ssdm_op_PartSelect.i3.i13.i32.i32(i13, i32, i32) nounwind readnone

define weak i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_39 = trunc i64 %empty to i2
  ret i2 %empty_39
}

define weak i16 @_ssdm_op_PartSelect.i16.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_40 = trunc i64 %empty to i16
  ret i16 %empty_40
}

define weak i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_41 = trunc i32 %empty to i16
  ret i16 %empty_41
}

define weak i13 @_ssdm_op_PartSelect.i13.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_42 = trunc i64 %empty to i13
  ret i13 %empty_42
}

define weak i1 @_ssdm_op_NbReadReq.axis.i64P.i8P.i128P.i1P(i64*, i8*, i128*, i1*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i64P.i8P.i128P.i1P(i64*, i8*, i128*, i1*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i64(i64* %0)
  ret i1 %empty
}

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define weak i64 @_ssdm_op_BitConcatenate.i64.i8.i8.i48(i8, i8, i48) nounwind readnone {
entry:
  %empty = zext i8 %1 to i56
  %empty_43 = zext i48 %2 to i56
  %empty_44 = shl i56 %empty, 48
  %empty_45 = or i56 %empty_44, %empty_43
  %empty_46 = zext i8 %0 to i64
  %empty_47 = zext i56 %empty_45 to i64
  %empty_48 = shl i64 %empty_46, 56
  %empty_49 = or i64 %empty_48, %empty_47
  ret i64 %empty_49
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i24.i8.i16.i16(i24, i8, i16, i16) nounwind readnone {
entry:
  %empty = zext i16 %2 to i32
  %empty_50 = zext i16 %3 to i32
  %empty_51 = shl i32 %empty, 16
  %empty_52 = or i32 %empty_51, %empty_50
  %empty_53 = zext i8 %1 to i40
  %empty_54 = zext i32 %empty_52 to i40
  %empty_55 = shl i40 %empty_53, 32
  %empty_56 = or i40 %empty_55, %empty_54
  %empty_57 = zext i24 %0 to i64
  %empty_58 = zext i40 %empty_56 to i64
  %empty_59 = shl i64 %empty_57, 40
  %empty_60 = or i64 %empty_59, %empty_58
  ret i64 %empty_60
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i2.i6.i4.i4.i16.i32(i2, i6, i4, i4, i16, i32) nounwind readnone {
entry:
  %empty = zext i16 %4 to i48
  %empty_61 = zext i32 %5 to i48
  %empty_62 = shl i48 %empty, 32
  %empty_63 = or i48 %empty_62, %empty_61
  %empty_64 = zext i4 %3 to i52
  %empty_65 = zext i48 %empty_63 to i52
  %empty_66 = shl i52 %empty_64, 48
  %empty_67 = or i52 %empty_66, %empty_65
  %empty_68 = zext i4 %2 to i56
  %empty_69 = zext i52 %empty_67 to i56
  %empty_70 = shl i56 %empty_68, 52
  %empty_71 = or i56 %empty_70, %empty_69
  %empty_72 = zext i6 %1 to i62
  %empty_73 = zext i56 %empty_71 to i62
  %empty_74 = shl i62 %empty_72, 56
  %empty_75 = or i62 %empty_74, %empty_73
  %empty_76 = zext i2 %0 to i64
  %empty_77 = zext i62 %empty_75 to i64
  %empty_78 = shl i64 %empty_76, 62
  %empty_79 = or i64 %empty_78, %empty_77
  ret i64 %empty_79
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i16.i48(i16, i48) nounwind readnone {
entry:
  %empty = zext i16 %0 to i64
  %empty_80 = zext i48 %1 to i64
  %empty_81 = shl i64 %empty, 48
  %empty_82 = or i64 %empty_81, %empty_80
  ret i64 %empty_82
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i16.i32.i16(i16, i32, i16) nounwind readnone {
entry:
  %empty = zext i32 %1 to i48
  %empty_83 = zext i16 %2 to i48
  %empty_84 = shl i48 %empty, 16
  %empty_85 = or i48 %empty_84, %empty_83
  %empty_86 = zext i16 %0 to i64
  %empty_87 = zext i48 %empty_85 to i64
  %empty_88 = shl i64 %empty_86, 48
  %empty_89 = or i64 %empty_88, %empty_87
  ret i64 %empty_89
}

define weak i38 @_ssdm_op_BitConcatenate.i38.i3.i3.i16.i16(i3, i3, i16, i16) nounwind readnone {
entry:
  %empty = zext i16 %2 to i32
  %empty_90 = zext i16 %3 to i32
  %empty_91 = shl i32 %empty, 16
  %empty_92 = or i32 %empty_91, %empty_90
  %empty_93 = zext i3 %1 to i35
  %empty_94 = zext i32 %empty_92 to i35
  %empty_95 = shl i35 %empty_93, 32
  %empty_96 = or i35 %empty_95, %empty_94
  %empty_97 = zext i3 %0 to i38
  %empty_98 = zext i35 %empty_96 to i38
  %empty_99 = shl i38 %empty_97, 35
  %empty_100 = or i38 %empty_99, %empty_98
  ret i38 %empty_100
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %0 to i16
  %empty_101 = zext i8 %1 to i16
  %empty_102 = shl i16 %empty, 8
  %empty_103 = or i16 %empty_102, %empty_101
  ret i16 %empty_103
}

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i64 @_autotb_FifoWrite_i64(i64*, i64)

declare i128 @_autotb_FifoWrite_i128(i128*, i128)

declare i1 @_autotb_FifoWrite_i1(i1*, i1)

declare i8 @_autotb_FifoRead_i8(i8*)

declare i64 @_autotb_FifoRead_i64(i64*)

declare i128 @_autotb_FifoRead_i128(i128*)

declare i1 @_autotb_FifoRead_i1(i1*)

declare i1 @_autotb_FifoCanRead_i64(i64*)

declare void @_GLOBAL__I_a8() nounwind section ".text.startup"

declare void @_GLOBAL__I_a31() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [3 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 2, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 63, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"inData.V.data.V", metadata !11, metadata !"uint64", i32 0, i32 63}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 7, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"inData.V.strb.V", metadata !11, metadata !"uint8", i32 0, i32 7}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 127, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"inData.V.user.V", metadata !11, metadata !"uint128", i32 0, i32 127}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 0, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"inData.V.last.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 63, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"outData.V.data.V", metadata !11, metadata !"uint64", i32 0, i32 63}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 7, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"outData.V.strb.V", metadata !11, metadata !"uint8", i32 0, i32 7}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 127, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"outData.V.user.V", metadata !11, metadata !"uint128", i32 0, i32 127}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 0, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"outData.V.last.V", metadata !11, metadata !"uint1", i32 0, i32 0}
