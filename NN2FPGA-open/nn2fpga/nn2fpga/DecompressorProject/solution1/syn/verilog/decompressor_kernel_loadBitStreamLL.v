// ==============================================================
// Generated by Vitis HLS v2022.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module decompressor_kernel_loadBitStreamLL (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        bitbuffer_read,
        bits_cntr_read_2,
        bits_cntr_read,
        huffman_input_stream_dout,
        huffman_input_stream_empty_n,
        huffman_input_stream_read,
        huffman_eos_stream_dout,
        huffman_eos_stream_empty_n,
        huffman_eos_stream_read,
        done_read_2,
        done_read,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        huffman_input_stream_blk_n,
        huffman_eos_stream_blk_n
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] bitbuffer_read;
input  [5:0] bits_cntr_read_2;
input  [5:0] bits_cntr_read;
input  [15:0] huffman_input_stream_dout;
input   huffman_input_stream_empty_n;
output   huffman_input_stream_read;
input  [0:0] huffman_eos_stream_dout;
input   huffman_eos_stream_empty_n;
output   huffman_eos_stream_read;
input  [0:0] done_read_2;
input  [0:0] done_read;
output  [31:0] ap_return_0;
output  [5:0] ap_return_1;
output  [0:0] ap_return_2;
output   huffman_input_stream_blk_n;
output   huffman_eos_stream_blk_n;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg huffman_input_stream_read;
reg huffman_eos_stream_read;
reg[31:0] ap_return_0;
reg[5:0] ap_return_1;
reg[0:0] ap_return_2;
reg huffman_input_stream_blk_n;
reg huffman_eos_stream_blk_n;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] or_ln57_fu_135_p2;
wire   [5:0] add_ln62_fu_166_p2;
reg   [5:0] ap_phi_mux_phi_ln64_phi_fu_91_p4;
reg    ap_block_state1;
reg   [0:0] ap_phi_mux_phi_ln64_1_phi_fu_101_p4;
wire   [31:0] add_ln60_fu_159_p2;
reg   [31:0] ap_phi_mux_bitbuffer_0_phi_fu_112_p4;
wire   [1:0] tmp_fu_119_p4;
wire   [0:0] icmp_ln57_fu_129_p2;
wire   [30:0] zext_ln60_fu_141_p1;
wire   [30:0] zext_ln60_1_fu_145_p1;
wire   [30:0] shl_ln60_fu_149_p2;
wire   [31:0] zext_ln60_2_fu_155_p1;
reg   [31:0] ap_return_0_preg;
reg   [5:0] ap_return_1_preg;
reg   [0:0] ap_return_2_preg;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_return_0_preg = 32'd0;
#0 ap_return_1_preg = 6'd0;
#0 ap_return_2_preg = 1'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= 32'd0;
    end else begin
        if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_return_0_preg <= ap_phi_mux_bitbuffer_0_phi_fu_112_p4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 6'd0;
    end else begin
        if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_return_1_preg <= ap_phi_mux_phi_ln64_phi_fu_91_p4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_2_preg <= 1'd0;
    end else begin
        if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_return_2_preg <= ap_phi_mux_phi_ln64_1_phi_fu_101_p4;
        end
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        if ((or_ln57_fu_135_p2 == 1'd1)) begin
            ap_phi_mux_bitbuffer_0_phi_fu_112_p4 = bitbuffer_read;
        end else if ((or_ln57_fu_135_p2 == 1'd0)) begin
            ap_phi_mux_bitbuffer_0_phi_fu_112_p4 = add_ln60_fu_159_p2;
        end else begin
            ap_phi_mux_bitbuffer_0_phi_fu_112_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_bitbuffer_0_phi_fu_112_p4 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        if ((or_ln57_fu_135_p2 == 1'd1)) begin
            ap_phi_mux_phi_ln64_1_phi_fu_101_p4 = done_read_2;
        end else if ((or_ln57_fu_135_p2 == 1'd0)) begin
            ap_phi_mux_phi_ln64_1_phi_fu_101_p4 = huffman_eos_stream_dout;
        end else begin
            ap_phi_mux_phi_ln64_1_phi_fu_101_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_phi_ln64_1_phi_fu_101_p4 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        if ((or_ln57_fu_135_p2 == 1'd1)) begin
            ap_phi_mux_phi_ln64_phi_fu_91_p4 = bits_cntr_read_2;
        end else if ((or_ln57_fu_135_p2 == 1'd0)) begin
            ap_phi_mux_phi_ln64_phi_fu_91_p4 = add_ln62_fu_166_p2;
        end else begin
            ap_phi_mux_phi_ln64_phi_fu_91_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_phi_ln64_phi_fu_91_p4 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return_0 = ap_phi_mux_bitbuffer_0_phi_fu_112_p4;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return_1 = ap_phi_mux_phi_ln64_phi_fu_91_p4;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return_2 = ap_phi_mux_phi_ln64_1_phi_fu_101_p4;
    end else begin
        ap_return_2 = ap_return_2_preg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (or_ln57_fu_135_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        huffman_eos_stream_blk_n = huffman_eos_stream_empty_n;
    end else begin
        huffman_eos_stream_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state1) & (or_ln57_fu_135_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        huffman_eos_stream_read = 1'b1;
    end else begin
        huffman_eos_stream_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (or_ln57_fu_135_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        huffman_input_stream_blk_n = huffman_input_stream_empty_n;
    end else begin
        huffman_input_stream_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state1) & (or_ln57_fu_135_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        huffman_input_stream_read = 1'b1;
    end else begin
        huffman_input_stream_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln60_fu_159_p2 = (zext_ln60_2_fu_155_p1 + bitbuffer_read);

assign add_ln62_fu_166_p2 = (bits_cntr_read + 6'd16);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | ((or_ln57_fu_135_p2 == 1'd0) & (huffman_eos_stream_empty_n == 1'b0)) | ((or_ln57_fu_135_p2 == 1'd0) & (huffman_input_stream_empty_n == 1'b0)));
end

assign icmp_ln57_fu_129_p2 = ((tmp_fu_119_p4 != 2'd0) ? 1'b1 : 1'b0);

assign or_ln57_fu_135_p2 = (icmp_ln57_fu_129_p2 | done_read);

assign shl_ln60_fu_149_p2 = zext_ln60_fu_141_p1 << zext_ln60_1_fu_145_p1;

assign tmp_fu_119_p4 = {{bits_cntr_read[5:4]}};

assign zext_ln60_1_fu_145_p1 = bits_cntr_read;

assign zext_ln60_2_fu_155_p1 = shl_ln60_fu_149_p2;

assign zext_ln60_fu_141_p1 = huffman_input_stream_dout;

endmodule //decompressor_kernel_loadBitStreamLL
