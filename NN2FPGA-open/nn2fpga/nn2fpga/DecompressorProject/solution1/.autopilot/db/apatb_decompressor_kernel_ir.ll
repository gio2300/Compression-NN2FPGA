; ModuleID = '/home/giovannic/NN2FPGA-open/nn2fpga/DecompressorProject/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<1024>" = type { %"struct.ap_int_base<1024, false>" }
%"struct.ap_int_base<1024, false>" = type { %"struct.ssdm_int<1024, false>" }
%"struct.ssdm_int<1024, false>" = type { i1024 }
%"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>" = type { %"class.hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>" }
%"class.hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>" = type { %"struct.std::array<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>" }
%"struct.std::array<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>" = type { [4 x %"struct.ap_uint<8>"] }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"class.hls::stream<bool, 0>" = type { i1 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: noinline willreturn
define void @apatb_decompressor_kernel_ir(%"struct.ap_uint<1024>"* noalias nocapture nonnull readonly %m_axi_input, %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* noalias nocapture nonnull dereferenceable(4) %out_stream, %"class.hls::stream<bool, 0>"* noalias nocapture nonnull dereferenceable(1) %out_eos) local_unnamed_addr #1 {
entry:
  %m_axi_input_copy = alloca i1024, align 512
  %out_stream_copy = alloca i32, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i32* %out_stream_copy, i32 0) ]
  %out_eos_copy = alloca i1, align 512
  call void @llvm.sideeffect() #10 [ "stream_interface"(i1* %out_eos_copy, i32 0) ]
  call fastcc void @copy_in(%"struct.ap_uint<1024>"* nonnull %m_axi_input, i1024* nonnull align 512 %m_axi_input_copy, %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* nonnull %out_stream, i32* nonnull align 512 %out_stream_copy, %"class.hls::stream<bool, 0>"* nonnull %out_eos, i1* nonnull align 512 %out_eos_copy)
  call void @apatb_decompressor_kernel_hw(i1024* %m_axi_input_copy, i32* %out_stream_copy, i1* %out_eos_copy)
  call void @copy_back(%"struct.ap_uint<1024>"* %m_axi_input, i1024* %m_axi_input_copy, %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* %out_stream, i32* %out_stream_copy, %"class.hls::stream<bool, 0>"* %out_eos, i1* %out_eos_copy)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"struct.ap_uint<1024>"* noalias readonly "unpacked"="0", i1024* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* noalias "unpacked"="2", i32* noalias align 512 "unpacked"="3", %"class.hls::stream<bool, 0>"* noalias "unpacked"="4", i1* noalias nocapture align 512 "unpacked"="5.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1024>.296"(i1024* align 512 %1, %"struct.ap_uint<1024>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"(i32* align 512 %3, %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(i1* align 512 %5, %"class.hls::stream<bool, 0>"* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1024>"(%"struct.ap_uint<1024>"* noalias "unpacked"="0" %dst, i1024* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<1024>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<1024>", %"struct.ap_uint<1024>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i1024, i1024* %src, align 512
  store i1024 %1, i1024* %dst.0.0.04, align 128
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"(i32* noalias align 512 %dst, %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* noalias %src) unnamed_addr #4 {
entry:
  %0 = icmp eq i32* %dst, null
  %1 = icmp eq %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"(i32* nonnull align 512 %dst, %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"(i32* noalias nocapture align 512, %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* noalias nocapture) unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"
  %3 = alloca i32
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>", %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* %2
  %9 = call i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>s"(%"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>" %8)
  store i32 %9, i32* %3
  %10 = bitcast i32* %3 to i8*
  %11 = bitcast i32* %0 to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(i1* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<bool, 0>"* noalias "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<bool, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>"(i1* align 512 %dst, %"class.hls::stream<bool, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>"(i1* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<bool, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::stream<bool, 0>"
  %3 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<bool, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<bool, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<bool, 0>"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<bool, 0>", %"class.hls::stream<bool, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<bool, 0>" %8, 0
  store i1 %.evi, i1* %3
  %9 = bitcast i1* %3 to i8*
  %10 = bitcast i1* %0 to i8*
  call void @fpga_fifo_push_1(i8* %9, i8* %10)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"struct.ap_uint<1024>"* noalias "unpacked"="0", i1024* noalias nocapture readonly align 512 "unpacked"="1.0", %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* noalias "unpacked"="2", i32* noalias align 512 "unpacked"="3", %"class.hls::stream<bool, 0>"* noalias "unpacked"="4", i1* noalias nocapture align 512 "unpacked"="5.0") unnamed_addr #6 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1024>"(%"struct.ap_uint<1024>"* %0, i1024* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>.307"(%"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.285"(%"class.hls::stream<bool, 0>"* %4, i1* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.285"(%"class.hls::stream<bool, 0>"* noalias "unpacked"="0" %dst, i1* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<bool, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>.288"(%"class.hls::stream<bool, 0>"* nonnull %dst, i1* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>.288"(%"class.hls::stream<bool, 0>"* noalias nocapture "unpacked"="0", i1* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #5 {
entry:
  %2 = alloca i1
  %3 = alloca %"class.hls::stream<bool, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i1* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i1* %2 to i8*
  %7 = bitcast i1* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %6, i8* %7)
  %8 = bitcast i1* %2 to i8*
  %9 = load i8, i8* %8
  %10 = trunc i8 %9 to i1
  %.ivi = insertvalue %"class.hls::stream<bool, 0>" undef, i1 %10, 0
  store %"class.hls::stream<bool, 0>" %.ivi, %"class.hls::stream<bool, 0>"* %3
  %11 = bitcast %"class.hls::stream<bool, 0>"* %3 to i8*
  %12 = bitcast %"class.hls::stream<bool, 0>"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %11, i8* %12)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1024>.296"(i1024* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<1024>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<1024>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<1024>", %"struct.ap_uint<1024>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i1024, i1024* %src.0.0.03, align 128
  store i1024 %1, i1024* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>.307"(%"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* noalias %dst, i32* noalias align 512 %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* %dst, null
  %1 = icmp eq i32* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>.310"(%"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* nonnull %dst, i32* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>.310"(%"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* noalias nocapture, i32* noalias nocapture align 512) unnamed_addr #5 {
entry:
  %2 = alloca i32
  %3 = alloca %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i32* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i32* %2 to i8*
  %7 = bitcast i32* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile i32, i32* %2
  %9 = call [4 x %"struct.ap_uint<8>"] @"_llvm.fpga.unpack.bits.s_class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>s.i32"(i32 %8)
  %oldret2 = insertvalue %"struct.std::array<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>" undef, [4 x %"struct.ap_uint<8>"] %9, 0
  %oldret1 = insertvalue %"class.hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>" undef, %"struct.std::array<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>" %oldret2, 0
  %oldret = insertvalue %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>" undef, %"class.hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>" %oldret1, 0
  store %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>" %oldret, %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* %3
  %10 = bitcast %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal [4 x %"struct.ap_uint<8>"] @"_llvm.fpga.unpack.bits.s_class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>s.i32"(i32 %A) #7 {
  %1 = trunc i32 %A to i8
  %.0 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %1, 0
  %.01 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.01, 0
  %.03 = insertvalue [4 x %"struct.ap_uint<8>"] undef, %"struct.ap_uint<8>" %.02, 0
  %2 = lshr i32 %A, 8
  %3 = trunc i32 %2 to i8
  %.04 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %3, 0
  %.05 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.05, 0
  %.1 = insertvalue [4 x %"struct.ap_uint<8>"] %.03, %"struct.ap_uint<8>" %.06, 1
  %4 = lshr i32 %A, 16
  %5 = trunc i32 %4 to i8
  %.07 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %5, 0
  %.08 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.07, 0
  %.09 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.08, 0
  %.2 = insertvalue [4 x %"struct.ap_uint<8>"] %.1, %"struct.ap_uint<8>" %.09, 2
  %6 = lshr i32 %A, 24
  %7 = trunc i32 %6 to i8
  %.010 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %7, 0
  %.011 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.010, 0
  %.012 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.011, 0
  %.3 = insertvalue [4 x %"struct.ap_uint<8>"] %.2, %"struct.ap_uint<8>" %.012, 3
  ret [4 x %"struct.ap_uint<8>"] %.3
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>s"(%"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>" %A) #7 {
  %A.0 = extractvalue %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>" %A, 0
  %A.0.0 = extractvalue %"class.hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>" %A.0, 0
  %A.0.0.0 = extractvalue %"struct.std::array<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue [4 x %"struct.ap_uint<8>"] %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.0.0, 0
  %A.0.0.0.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.0.0.0, 0
  %A.0.0.0.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.0.0.0.0, 0
  %1 = zext i8 %A.0.0.0.0.0.0.0 to i32
  %A.0.0.0.1 = extractvalue [4 x %"struct.ap_uint<8>"] %A.0.0.0, 1
  %A.0.0.0.1.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.0.1, 0
  %A.0.0.0.1.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.0.1.0, 0
  %A.0.0.0.1.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.0.1.0.0, 0
  %2 = zext i8 %A.0.0.0.1.0.0.0 to i32
  %3 = shl nuw nsw i32 %2, 8
  %4 = or i32 %3, %1
  %A.0.0.0.2 = extractvalue [4 x %"struct.ap_uint<8>"] %A.0.0.0, 2
  %A.0.0.0.2.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.0.2, 0
  %A.0.0.0.2.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.0.2.0, 0
  %A.0.0.0.2.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.0.2.0.0, 0
  %5 = zext i8 %A.0.0.0.2.0.0.0 to i32
  %6 = shl nuw nsw i32 %5, 16
  %7 = or i32 %4, %6
  %A.0.0.0.3 = extractvalue [4 x %"struct.ap_uint<8>"] %A.0.0.0, 3
  %A.0.0.0.3.0 = extractvalue %"struct.ap_uint<8>" %A.0.0.0.3, 0
  %A.0.0.0.3.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0.0.3.0, 0
  %A.0.0.0.3.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.0.3.0.0, 0
  %8 = zext i8 %A.0.0.0.3.0.0.0 to i32
  %9 = shl nuw i32 %8, 24
  %10 = or i32 %7, %9
  ret i32 %10
}

declare void @apatb_decompressor_kernel_hw(i1024*, i32*, i1*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"struct.ap_uint<1024>"* noalias "unpacked"="0", i1024* noalias nocapture readonly align 512 "unpacked"="1.0", %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* noalias "unpacked"="2", i32* noalias align 512 "unpacked"="3", %"class.hls::stream<bool, 0>"* noalias "unpacked"="4", i1* noalias nocapture align 512 "unpacked"="5.0") unnamed_addr #6 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>.307"(%"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.285"(%"class.hls::stream<bool, 0>"* %4, i1* align 512 %5)
  ret void
}

define void @decompressor_kernel_hw_stub_wrapper(i1024*, i32*, i1*) #8 {
entry:
  %3 = alloca %"struct.ap_uint<1024>"
  %4 = alloca %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"
  %5 = alloca %"class.hls::stream<bool, 0>"
  call void @copy_out(%"struct.ap_uint<1024>"* %3, i1024* %0, %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* %4, i32* %1, %"class.hls::stream<bool, 0>"* %5, i1* %2)
  call void @decompressor_kernel_hw_stub(%"struct.ap_uint<1024>"* %3, %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* %4, %"class.hls::stream<bool, 0>"* %5)
  call void @copy_in(%"struct.ap_uint<1024>"* %3, i1024* %0, %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"* %4, i32* %1, %"class.hls::stream<bool, 0>"* %5, i1* %2)
  ret void
}

declare void @decompressor_kernel_hw_stub(%"struct.ap_uint<1024>"*, %"class.hls::stream<hls::vector<ap_fixed<8, 4, AP_RND, AP_SAT, 0>, 4>, 0>"*, %"class.hls::stream<bool, 0>"*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #7 = { alwaysinline nounwind readnone willreturn }
attributes #8 = { "fpga.wrapper.func"="stub" }
attributes #9 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #10 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="8" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
