// ==============================================================
// Generated by Vitis HLS v2022.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module decompressor_kernel_decompressor_kernel_Pipeline_VITIS_LOOP_64_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        lz77_output_stream_dout,
        lz77_output_stream_empty_n,
        lz77_output_stream_read,
        out_stream_din,
        out_stream_full_n,
        out_stream_write,
        decompressed_count_out,
        decompressed_count_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] lz77_output_stream_dout;
input   lz77_output_stream_empty_n;
output   lz77_output_stream_read;
output  [31:0] out_stream_din;
input   out_stream_full_n;
output   out_stream_write;
output  [31:0] decompressed_count_out;
output   decompressed_count_out_ap_vld;

reg ap_idle;
reg lz77_output_stream_read;
reg out_stream_write;
reg decompressed_count_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] tmp_nbreadreq_fu_66_p3;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    lz77_output_stream_blk_n;
wire    ap_block_pp0_stage0;
reg    out_stream_blk_n;
wire   [6:0] select_ln78_fu_179_p3;
reg   [6:0] select_ln78_reg_223;
reg    ap_block_pp0_stage0_11001;
reg   [31:0] decompressed_count_fu_62;
wire   [31:0] decompressed_count_2_fu_103_p2;
wire    ap_loop_init;
reg   [31:0] ap_sig_allocacmp_decompressed_count_1;
reg    ap_block_pp0_stage0_01001;
wire   [7:0] tmp_18_fu_113_p4;
wire   [0:0] icmp_ln74_fu_123_p2;
wire   [7:0] trunc_ln69_fu_109_p1;
wire   [7:0] lz77_data_1_fu_129_p3;
wire   [2:0] trunc_ln78_fu_137_p1;
wire   [3:0] tmp_s_fu_157_p4;
wire   [0:0] tmp_19_fu_149_p3;
wire   [0:0] icmp_ln78_fu_167_p2;
wire   [0:0] or_ln78_fu_173_p2;
wire   [6:0] shl_ln_fu_141_p3;
wire   [7:0] zext_ln69_fu_192_p1;
wire   [30:0] tmp_14_fu_195_p7;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 decompressed_count_fu_62 = 32'd0;
#0 ap_done_reg = 1'b0;
end

decompressor_kernel_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_nbreadreq_fu_66_p3 == 1'd1) & (ap_start_int == 1'b1))) begin
            decompressed_count_fu_62 <= decompressed_count_2_fu_103_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            decompressed_count_fu_62 <= 32'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln78_reg_223 <= select_ln78_fu_179_p3;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (tmp_nbreadreq_fu_66_p3 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_decompressed_count_1 = 32'd0;
    end else begin
        ap_sig_allocacmp_decompressed_count_1 = decompressed_count_fu_62;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_66_p3 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        decompressed_count_out_ap_vld = 1'b1;
    end else begin
        decompressed_count_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_nbreadreq_fu_66_p3 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lz77_output_stream_blk_n = lz77_output_stream_empty_n;
    end else begin
        lz77_output_stream_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_66_p3 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lz77_output_stream_read = 1'b1;
    end else begin
        lz77_output_stream_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_stream_blk_n = out_stream_full_n;
    end else begin
        out_stream_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_stream_write = 1'b1;
    end else begin
        out_stream_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1)) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1)) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1)) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((tmp_nbreadreq_fu_66_p3 == 1'd1) & (lz77_output_stream_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (out_stream_full_n == 1'b0);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign decompressed_count_2_fu_103_p2 = (ap_sig_allocacmp_decompressed_count_1 + 32'd1);

assign decompressed_count_out = decompressed_count_fu_62;

assign icmp_ln74_fu_123_p2 = ((tmp_18_fu_113_p4 != 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln78_fu_167_p2 = ((tmp_s_fu_157_p4 != 4'd0) ? 1'b1 : 1'b0);

assign lz77_data_1_fu_129_p3 = ((icmp_ln74_fu_123_p2[0:0] == 1'b1) ? 8'd255 : trunc_ln69_fu_109_p1);

assign or_ln78_fu_173_p2 = (tmp_19_fu_149_p3 | icmp_ln78_fu_167_p2);

assign out_stream_din = tmp_14_fu_195_p7;

assign select_ln78_fu_179_p3 = ((or_ln78_fu_173_p2[0:0] == 1'b1) ? 7'd127 : shl_ln_fu_141_p3);

assign shl_ln_fu_141_p3 = {{trunc_ln78_fu_137_p1}, {4'd0}};

assign tmp_14_fu_195_p7 = {{{{{{select_ln78_reg_223}, {1'd0}}, {select_ln78_reg_223}}, {1'd0}}, {select_ln78_reg_223}}, {zext_ln69_fu_192_p1}};

assign tmp_18_fu_113_p4 = {{lz77_output_stream_dout[15:8]}};

assign tmp_19_fu_149_p3 = lz77_data_1_fu_129_p3[32'd3];

assign tmp_nbreadreq_fu_66_p3 = lz77_output_stream_empty_n;

assign tmp_s_fu_157_p4 = {{lz77_data_1_fu_129_p3[7:4]}};

assign trunc_ln69_fu_109_p1 = lz77_output_stream_dout[7:0];

assign trunc_ln78_fu_137_p1 = lz77_data_1_fu_129_p3[2:0];

assign zext_ln69_fu_192_p1 = select_ln78_reg_223;

endmodule //decompressor_kernel_decompressor_kernel_Pipeline_VITIS_LOOP_64_4
