// ==============================================================
// Generated by Vitis HLS v2022.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module decompressor_kernel_byteGen (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_read,
        p_read1,
        codeOffsets_address0,
        codeOffsets_ce0,
        codeOffsets_q0,
        codeOffsets_address1,
        codeOffsets_ce1,
        codeOffsets_q1,
        bl1Codes_address0,
        bl1Codes_ce0,
        bl1Codes_q0,
        bl2Codes_address0,
        bl2Codes_ce0,
        bl2Codes_q0,
        bl3Codes_address0,
        bl3Codes_ce0,
        bl3Codes_q0,
        bl4Codes_address0,
        bl4Codes_ce0,
        bl4Codes_q0,
        bl5Codes_address0,
        bl5Codes_ce0,
        bl5Codes_q0,
        bl6Codes_address0,
        bl6Codes_ce0,
        bl6Codes_q0,
        bl7Codes_address0,
        bl7Codes_ce0,
        bl7Codes_q0,
        lens_address0,
        lens_ce0,
        lens_we0,
        lens_d0,
        huffman_eos_stream_dout,
        huffman_eos_stream_empty_n,
        huffman_eos_stream_read,
        huffman_input_stream_dout,
        huffman_input_stream_empty_n,
        huffman_input_stream_read,
        nlen_val,
        ndist_val,
        p_read2,
        ap_return_0,
        ap_return_1,
        ap_return_2
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] p_read;
input  [5:0] p_read1;
output  [3:0] codeOffsets_address0;
output   codeOffsets_ce0;
input  [15:0] codeOffsets_q0;
output  [3:0] codeOffsets_address1;
output   codeOffsets_ce1;
input  [15:0] codeOffsets_q1;
output  [0:0] bl1Codes_address0;
output   bl1Codes_ce0;
input  [8:0] bl1Codes_q0;
output  [1:0] bl2Codes_address0;
output   bl2Codes_ce0;
input  [8:0] bl2Codes_q0;
output  [2:0] bl3Codes_address0;
output   bl3Codes_ce0;
input  [8:0] bl3Codes_q0;
output  [3:0] bl4Codes_address0;
output   bl4Codes_ce0;
input  [8:0] bl4Codes_q0;
output  [4:0] bl5Codes_address0;
output   bl5Codes_ce0;
input  [8:0] bl5Codes_q0;
output  [5:0] bl6Codes_address0;
output   bl6Codes_ce0;
input  [8:0] bl6Codes_q0;
output  [6:0] bl7Codes_address0;
output   bl7Codes_ce0;
input  [8:0] bl7Codes_q0;
output  [8:0] lens_address0;
output   lens_ce0;
output   lens_we0;
output  [4:0] lens_d0;
input  [0:0] huffman_eos_stream_dout;
input   huffman_eos_stream_empty_n;
output   huffman_eos_stream_read;
input  [15:0] huffman_input_stream_dout;
input   huffman_input_stream_empty_n;
output   huffman_input_stream_read;
input  [8:0] nlen_val;
input  [5:0] ndist_val;
input  [0:0] p_read2;
output  [31:0] ap_return_0;
output  [5:0] ap_return_1;
output  [0:0] ap_return_2;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] codeOffsets_address0;
reg codeOffsets_ce0;
reg[3:0] codeOffsets_address1;
reg codeOffsets_ce1;
reg huffman_eos_stream_read;
reg huffman_input_stream_read;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    huffman_eos_stream_blk_n;
wire   [0:0] or_ln57_fu_337_p2;
reg    huffman_input_stream_blk_n;
wire   [31:0] add_ln60_fu_361_p2;
wire   [5:0] add_ln62_fu_367_p2;
wire   [8:0] add_i307_fu_377_p2;
reg   [8:0] add_i307_reg_500;
wire    ap_CS_fsm_state2;
reg   [15:0] codeOffsets_load_reg_515;
wire    ap_CS_fsm_state3;
reg   [15:0] codeOffsets_load_1_reg_530;
reg   [15:0] codeOffsets_load_2_reg_535;
wire    ap_CS_fsm_state4;
reg   [15:0] codeOffsets_load_3_reg_550;
reg   [15:0] codeOffsets_load_4_reg_555;
reg   [15:0] codeOffsets_load_5_reg_560;
wire    ap_CS_fsm_state5;
reg   [15:0] codeOffsets_load_6_reg_565;
wire    grp_byteGen_Pipeline_bytegen_fu_274_ap_start;
wire    grp_byteGen_Pipeline_bytegen_fu_274_ap_done;
wire    grp_byteGen_Pipeline_bytegen_fu_274_ap_idle;
wire    grp_byteGen_Pipeline_bytegen_fu_274_ap_ready;
wire    grp_byteGen_Pipeline_bytegen_fu_274_huffman_input_stream_read;
wire    grp_byteGen_Pipeline_bytegen_fu_274_huffman_eos_stream_read;
wire   [0:0] grp_byteGen_Pipeline_bytegen_fu_274_bl1Codes_address0;
wire    grp_byteGen_Pipeline_bytegen_fu_274_bl1Codes_ce0;
wire   [1:0] grp_byteGen_Pipeline_bytegen_fu_274_bl2Codes_address0;
wire    grp_byteGen_Pipeline_bytegen_fu_274_bl2Codes_ce0;
wire   [2:0] grp_byteGen_Pipeline_bytegen_fu_274_bl3Codes_address0;
wire    grp_byteGen_Pipeline_bytegen_fu_274_bl3Codes_ce0;
wire   [3:0] grp_byteGen_Pipeline_bytegen_fu_274_bl4Codes_address0;
wire    grp_byteGen_Pipeline_bytegen_fu_274_bl4Codes_ce0;
wire   [4:0] grp_byteGen_Pipeline_bytegen_fu_274_bl5Codes_address0;
wire    grp_byteGen_Pipeline_bytegen_fu_274_bl5Codes_ce0;
wire   [5:0] grp_byteGen_Pipeline_bytegen_fu_274_bl6Codes_address0;
wire    grp_byteGen_Pipeline_bytegen_fu_274_bl6Codes_ce0;
wire   [6:0] grp_byteGen_Pipeline_bytegen_fu_274_bl7Codes_address0;
wire    grp_byteGen_Pipeline_bytegen_fu_274_bl7Codes_ce0;
wire   [8:0] grp_byteGen_Pipeline_bytegen_fu_274_lens_address0;
wire    grp_byteGen_Pipeline_bytegen_fu_274_lens_ce0;
wire    grp_byteGen_Pipeline_bytegen_fu_274_lens_we0;
wire   [4:0] grp_byteGen_Pipeline_bytegen_fu_274_lens_d0;
wire   [0:0] grp_byteGen_Pipeline_bytegen_fu_274_write_flag_1_out;
wire    grp_byteGen_Pipeline_bytegen_fu_274_write_flag_1_out_ap_vld;
wire   [5:0] grp_byteGen_Pipeline_bytegen_fu_274_bits_cntr_1_out;
wire    grp_byteGen_Pipeline_bytegen_fu_274_bits_cntr_1_out_ap_vld;
wire   [0:0] grp_byteGen_Pipeline_bytegen_fu_274_write_flag3_1_out;
wire    grp_byteGen_Pipeline_bytegen_fu_274_write_flag3_1_out_ap_vld;
wire   [31:0] grp_byteGen_Pipeline_bytegen_fu_274_p_bitbuffer_1_out;
wire    grp_byteGen_Pipeline_bytegen_fu_274_p_bitbuffer_1_out_ap_vld;
wire   [0:0] grp_byteGen_Pipeline_bytegen_fu_274_done_1_out;
wire    grp_byteGen_Pipeline_bytegen_fu_274_done_1_out_ap_vld;
reg   [31:0] p_bitbuffer_0_reg_230;
reg    ap_block_state1;
reg   [0:0] write_flag_0_reg_240;
reg   [0:0] empty_reg_254;
reg   [5:0] empty_58_reg_264;
reg    grp_byteGen_Pipeline_bytegen_fu_274_ap_start_reg;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire   [1:0] tmp_fu_321_p4;
wire   [0:0] icmp_ln57_fu_331_p2;
wire   [30:0] zext_ln60_fu_343_p1;
wire   [30:0] zext_ln60_3_fu_347_p1;
wire   [30:0] shl_ln60_fu_351_p2;
wire   [31:0] zext_ln60_4_fu_357_p1;
wire   [8:0] ndist_val_cast_fu_373_p1;
wire   [5:0] select_ln536_fu_398_p3;
wire   [0:0] select_ln536_1_fu_405_p3;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_byteGen_Pipeline_bytegen_fu_274_ap_start_reg = 1'b0;
end

decompressor_kernel_byteGen_Pipeline_bytegen grp_byteGen_Pipeline_bytegen_fu_274(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_byteGen_Pipeline_bytegen_fu_274_ap_start),
    .ap_done(grp_byteGen_Pipeline_bytegen_fu_274_ap_done),
    .ap_idle(grp_byteGen_Pipeline_bytegen_fu_274_ap_idle),
    .ap_ready(grp_byteGen_Pipeline_bytegen_fu_274_ap_ready),
    .huffman_input_stream_dout(huffman_input_stream_dout),
    .huffman_input_stream_empty_n(huffman_input_stream_empty_n),
    .huffman_input_stream_read(grp_byteGen_Pipeline_bytegen_fu_274_huffman_input_stream_read),
    .huffman_eos_stream_dout(huffman_eos_stream_dout),
    .huffman_eos_stream_empty_n(huffman_eos_stream_empty_n),
    .huffman_eos_stream_read(grp_byteGen_Pipeline_bytegen_fu_274_huffman_eos_stream_read),
    .write_flag_0(write_flag_0_reg_240),
    .empty_39(empty_58_reg_264),
    .p_bitbuffer_0(p_bitbuffer_0_reg_230),
    .empty(empty_reg_254),
    .add_i307_cast(add_i307_reg_500),
    .codeOffsets_load(codeOffsets_load_reg_515),
    .codeOffsets_load_1(codeOffsets_load_1_reg_530),
    .codeOffsets_load_2(codeOffsets_load_2_reg_535),
    .codeOffsets_load_3(codeOffsets_load_3_reg_550),
    .codeOffsets_load_4(codeOffsets_load_4_reg_555),
    .codeOffsets_load_5(codeOffsets_load_5_reg_560),
    .codeOffsets_load_6(codeOffsets_load_6_reg_565),
    .bl1Codes_address0(grp_byteGen_Pipeline_bytegen_fu_274_bl1Codes_address0),
    .bl1Codes_ce0(grp_byteGen_Pipeline_bytegen_fu_274_bl1Codes_ce0),
    .bl1Codes_q0(bl1Codes_q0),
    .bl2Codes_address0(grp_byteGen_Pipeline_bytegen_fu_274_bl2Codes_address0),
    .bl2Codes_ce0(grp_byteGen_Pipeline_bytegen_fu_274_bl2Codes_ce0),
    .bl2Codes_q0(bl2Codes_q0),
    .bl3Codes_address0(grp_byteGen_Pipeline_bytegen_fu_274_bl3Codes_address0),
    .bl3Codes_ce0(grp_byteGen_Pipeline_bytegen_fu_274_bl3Codes_ce0),
    .bl3Codes_q0(bl3Codes_q0),
    .bl4Codes_address0(grp_byteGen_Pipeline_bytegen_fu_274_bl4Codes_address0),
    .bl4Codes_ce0(grp_byteGen_Pipeline_bytegen_fu_274_bl4Codes_ce0),
    .bl4Codes_q0(bl4Codes_q0),
    .bl5Codes_address0(grp_byteGen_Pipeline_bytegen_fu_274_bl5Codes_address0),
    .bl5Codes_ce0(grp_byteGen_Pipeline_bytegen_fu_274_bl5Codes_ce0),
    .bl5Codes_q0(bl5Codes_q0),
    .bl6Codes_address0(grp_byteGen_Pipeline_bytegen_fu_274_bl6Codes_address0),
    .bl6Codes_ce0(grp_byteGen_Pipeline_bytegen_fu_274_bl6Codes_ce0),
    .bl6Codes_q0(bl6Codes_q0),
    .bl7Codes_address0(grp_byteGen_Pipeline_bytegen_fu_274_bl7Codes_address0),
    .bl7Codes_ce0(grp_byteGen_Pipeline_bytegen_fu_274_bl7Codes_ce0),
    .bl7Codes_q0(bl7Codes_q0),
    .lens_address0(grp_byteGen_Pipeline_bytegen_fu_274_lens_address0),
    .lens_ce0(grp_byteGen_Pipeline_bytegen_fu_274_lens_ce0),
    .lens_we0(grp_byteGen_Pipeline_bytegen_fu_274_lens_we0),
    .lens_d0(grp_byteGen_Pipeline_bytegen_fu_274_lens_d0),
    .write_flag_1_out(grp_byteGen_Pipeline_bytegen_fu_274_write_flag_1_out),
    .write_flag_1_out_ap_vld(grp_byteGen_Pipeline_bytegen_fu_274_write_flag_1_out_ap_vld),
    .bits_cntr_1_out(grp_byteGen_Pipeline_bytegen_fu_274_bits_cntr_1_out),
    .bits_cntr_1_out_ap_vld(grp_byteGen_Pipeline_bytegen_fu_274_bits_cntr_1_out_ap_vld),
    .write_flag3_1_out(grp_byteGen_Pipeline_bytegen_fu_274_write_flag3_1_out),
    .write_flag3_1_out_ap_vld(grp_byteGen_Pipeline_bytegen_fu_274_write_flag3_1_out_ap_vld),
    .p_bitbuffer_1_out(grp_byteGen_Pipeline_bytegen_fu_274_p_bitbuffer_1_out),
    .p_bitbuffer_1_out_ap_vld(grp_byteGen_Pipeline_bytegen_fu_274_p_bitbuffer_1_out_ap_vld),
    .done_1_out(grp_byteGen_Pipeline_bytegen_fu_274_done_1_out),
    .done_1_out_ap_vld(grp_byteGen_Pipeline_bytegen_fu_274_done_1_out_ap_vld)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_byteGen_Pipeline_bytegen_fu_274_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_byteGen_Pipeline_bytegen_fu_274_ap_start_reg <= 1'b1;
        end else if ((grp_byteGen_Pipeline_bytegen_fu_274_ap_ready == 1'b1)) begin
            grp_byteGen_Pipeline_bytegen_fu_274_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((or_ln57_fu_337_p2 == 1'd1)) begin
            empty_58_reg_264 <= p_read1;
        end else if ((or_ln57_fu_337_p2 == 1'd0)) begin
            empty_58_reg_264 <= add_ln62_fu_367_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((or_ln57_fu_337_p2 == 1'd1)) begin
            empty_reg_254 <= p_read2;
        end else if ((or_ln57_fu_337_p2 == 1'd0)) begin
            empty_reg_254 <= huffman_eos_stream_dout;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((or_ln57_fu_337_p2 == 1'd1)) begin
            p_bitbuffer_0_reg_230 <= p_read;
        end else if ((or_ln57_fu_337_p2 == 1'd0)) begin
            p_bitbuffer_0_reg_230 <= add_ln60_fu_361_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((or_ln57_fu_337_p2 == 1'd1)) begin
            write_flag_0_reg_240 <= 1'd0;
        end else if ((or_ln57_fu_337_p2 == 1'd0)) begin
            write_flag_0_reg_240 <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        add_i307_reg_500 <= add_i307_fu_377_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        codeOffsets_load_1_reg_530 <= codeOffsets_q1;
        codeOffsets_load_2_reg_535 <= codeOffsets_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        codeOffsets_load_3_reg_550 <= codeOffsets_q0;
        codeOffsets_load_4_reg_555 <= codeOffsets_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        codeOffsets_load_5_reg_560 <= codeOffsets_q0;
        codeOffsets_load_6_reg_565 <= codeOffsets_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        codeOffsets_load_reg_515 <= codeOffsets_q0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_byteGen_Pipeline_bytegen_fu_274_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

assign ap_ST_fsm_state7_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        codeOffsets_address0 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        codeOffsets_address0 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        codeOffsets_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        codeOffsets_address0 = 64'd0;
    end else begin
        codeOffsets_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        codeOffsets_address1 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        codeOffsets_address1 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        codeOffsets_address1 = 64'd1;
    end else begin
        codeOffsets_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1)))) begin
        codeOffsets_ce0 = 1'b1;
    end else begin
        codeOffsets_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        codeOffsets_ce1 = 1'b1;
    end else begin
        codeOffsets_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((or_ln57_fu_337_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        huffman_eos_stream_blk_n = huffman_eos_stream_empty_n;
    end else begin
        huffman_eos_stream_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((or_ln57_fu_337_p2 == 1'd0) & (1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        huffman_eos_stream_read = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        huffman_eos_stream_read = grp_byteGen_Pipeline_bytegen_fu_274_huffman_eos_stream_read;
    end else begin
        huffman_eos_stream_read = 1'b0;
    end
end

always @ (*) begin
    if (((or_ln57_fu_337_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        huffman_input_stream_blk_n = huffman_input_stream_empty_n;
    end else begin
        huffman_input_stream_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((or_ln57_fu_337_p2 == 1'd0) & (1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        huffman_input_stream_read = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        huffman_input_stream_read = grp_byteGen_Pipeline_bytegen_fu_274_huffman_input_stream_read;
    end else begin
        huffman_input_stream_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_byteGen_Pipeline_bytegen_fu_274_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_i307_fu_377_p2 = (ndist_val_cast_fu_373_p1 + nlen_val);

assign add_ln60_fu_361_p2 = (zext_ln60_4_fu_357_p1 + p_read);

assign add_ln62_fu_367_p2 = (p_read1 + 6'd16);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | ((or_ln57_fu_337_p2 == 1'd0) & (huffman_eos_stream_empty_n == 1'b0)) | ((or_ln57_fu_337_p2 == 1'd0) & (huffman_input_stream_empty_n == 1'b0)));
end

assign ap_return_0 = grp_byteGen_Pipeline_bytegen_fu_274_p_bitbuffer_1_out;

assign ap_return_1 = select_ln536_fu_398_p3;

assign ap_return_2 = select_ln536_1_fu_405_p3;

assign bl1Codes_address0 = grp_byteGen_Pipeline_bytegen_fu_274_bl1Codes_address0;

assign bl1Codes_ce0 = grp_byteGen_Pipeline_bytegen_fu_274_bl1Codes_ce0;

assign bl2Codes_address0 = grp_byteGen_Pipeline_bytegen_fu_274_bl2Codes_address0;

assign bl2Codes_ce0 = grp_byteGen_Pipeline_bytegen_fu_274_bl2Codes_ce0;

assign bl3Codes_address0 = grp_byteGen_Pipeline_bytegen_fu_274_bl3Codes_address0;

assign bl3Codes_ce0 = grp_byteGen_Pipeline_bytegen_fu_274_bl3Codes_ce0;

assign bl4Codes_address0 = grp_byteGen_Pipeline_bytegen_fu_274_bl4Codes_address0;

assign bl4Codes_ce0 = grp_byteGen_Pipeline_bytegen_fu_274_bl4Codes_ce0;

assign bl5Codes_address0 = grp_byteGen_Pipeline_bytegen_fu_274_bl5Codes_address0;

assign bl5Codes_ce0 = grp_byteGen_Pipeline_bytegen_fu_274_bl5Codes_ce0;

assign bl6Codes_address0 = grp_byteGen_Pipeline_bytegen_fu_274_bl6Codes_address0;

assign bl6Codes_ce0 = grp_byteGen_Pipeline_bytegen_fu_274_bl6Codes_ce0;

assign bl7Codes_address0 = grp_byteGen_Pipeline_bytegen_fu_274_bl7Codes_address0;

assign bl7Codes_ce0 = grp_byteGen_Pipeline_bytegen_fu_274_bl7Codes_ce0;

assign grp_byteGen_Pipeline_bytegen_fu_274_ap_start = grp_byteGen_Pipeline_bytegen_fu_274_ap_start_reg;

assign icmp_ln57_fu_331_p2 = ((tmp_fu_321_p4 != 2'd0) ? 1'b1 : 1'b0);

assign lens_address0 = grp_byteGen_Pipeline_bytegen_fu_274_lens_address0;

assign lens_ce0 = grp_byteGen_Pipeline_bytegen_fu_274_lens_ce0;

assign lens_d0 = grp_byteGen_Pipeline_bytegen_fu_274_lens_d0;

assign lens_we0 = grp_byteGen_Pipeline_bytegen_fu_274_lens_we0;

assign ndist_val_cast_fu_373_p1 = ndist_val;

assign or_ln57_fu_337_p2 = (p_read2 | icmp_ln57_fu_331_p2);

assign select_ln536_1_fu_405_p3 = ((grp_byteGen_Pipeline_bytegen_fu_274_write_flag3_1_out[0:0] == 1'b1) ? grp_byteGen_Pipeline_bytegen_fu_274_done_1_out : p_read2);

assign select_ln536_fu_398_p3 = ((grp_byteGen_Pipeline_bytegen_fu_274_write_flag_1_out[0:0] == 1'b1) ? grp_byteGen_Pipeline_bytegen_fu_274_bits_cntr_1_out : p_read1);

assign shl_ln60_fu_351_p2 = zext_ln60_fu_343_p1 << zext_ln60_3_fu_347_p1;

assign tmp_fu_321_p4 = {{p_read1[5:4]}};

assign zext_ln60_3_fu_347_p1 = p_read1;

assign zext_ln60_4_fu_357_p1 = shl_ln60_fu_351_p2;

assign zext_ln60_fu_343_p1 = huffman_input_stream_dout;

endmodule //decompressor_kernel_byteGen
