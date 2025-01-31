############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project DecompressorProject
set_top decompressor_kernel
add_files decompress.tcl
add_files ../work/cc/src/decompressor_kernel.cc
add_files ../work/cc/include/decompressor_kernel.h
add_files ../work/cc/include/fixed_codes.hpp
add_files ../work/cc/include/huffman_decoder.hpp
add_files ../work/npy/resnet8_weights.bin
add_files -tb ../work/cc/include/decompress_tb.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
config_cosim -tool xsim
source "./DecompressorProject/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -tool xsim
export_design -format ip_catalog
