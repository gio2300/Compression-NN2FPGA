// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

extern "C" void AESL_WRAP_decompressor_kernel (
volatile void* m_axi_input,
hls::stream<int > out_stream,
hls::stream<int > out_eos);
