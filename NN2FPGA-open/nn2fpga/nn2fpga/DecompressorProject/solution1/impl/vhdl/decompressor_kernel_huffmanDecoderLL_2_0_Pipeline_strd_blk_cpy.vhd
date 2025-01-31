-- ==============================================================
-- Generated by Vitis HLS v2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decompressor_kernel_huffmanDecoderLL_2_0_Pipeline_strd_blk_cpy is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    huffman_eos_stream_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    huffman_eos_stream_empty_n : IN STD_LOGIC;
    huffman_eos_stream_read : OUT STD_LOGIC;
    lz77_output_stream_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    lz77_output_stream_full_n : IN STD_LOGIC;
    lz77_output_stream_write : OUT STD_LOGIC;
    huffman_input_stream_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    huffman_input_stream_empty_n : IN STD_LOGIC;
    huffman_input_stream_read : OUT STD_LOGIC;
    done_25 : IN STD_LOGIC_VECTOR (0 downto 0);
    bitbuffer_33 : IN STD_LOGIC_VECTOR (31 downto 0);
    bits_cntr_35 : IN STD_LOGIC_VECTOR (5 downto 0);
    empty : IN STD_LOGIC_VECTOR (15 downto 0);
    done_6_out : OUT STD_LOGIC_VECTOR (0 downto 0);
    done_6_out_ap_vld : OUT STD_LOGIC;
    bitbuffer_6338_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    bitbuffer_6338_out_ap_vld : OUT STD_LOGIC;
    bits_cntr_5_out : OUT STD_LOGIC_VECTOR (5 downto 0);
    bits_cntr_5_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of decompressor_kernel_huffmanDecoderLL_2_0_Pipeline_strd_blk_cpy is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv6_38 : STD_LOGIC_VECTOR (5 downto 0) := "111000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv6_8 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal icmp_ln1035_reg_410 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln1042_fu_267_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op34_read_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal icmp_ln1035_reg_410_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln1042_reg_419 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op47_read_state3 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln1035_fu_221_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal huffman_input_stream_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal huffman_eos_stream_blk_n : STD_LOGIC;
    signal lz77_output_stream_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal add_ln1041_fu_245_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln1041_reg_414 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_phi_mux_bitbuffer_7339_phi_fu_183_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal bitbuffer_fu_348_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_phi_reg_pp0_iter2_bitbuffer_7339_reg_180 : STD_LOGIC_VECTOR (30 downto 0);
    signal zext_ln1048_fu_357_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal i_fu_100 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal i_2_fu_227_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_1 : STD_LOGIC_VECTOR (15 downto 0);
    signal bits_cntr_fu_104 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    signal add_ln1046_fu_273_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal bitbuffer_6338_fu_108 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal zext_ln1035_fu_362_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal done_6_fu_112 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_1_fu_251_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln1042_fu_261_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln1037_fu_298_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmpVal_fu_302_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln1044_fu_315_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal zext_ln1044_1_fu_319_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal shl_ln1044_fu_322_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal trunc_ln1044_fu_328_p1 : STD_LOGIC_VECTOR (23 downto 0);
    signal grp_fu_189_p4 : STD_LOGIC_VECTOR (23 downto 0);
    signal tmp_7_fu_338_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln1044_fu_332_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_319 : BOOLEAN;
    signal ap_condition_322 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component decompressor_kernel_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component decompressor_kernel_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    bitbuffer_6338_fu_108_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    bitbuffer_6338_fu_108 <= bitbuffer_33;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    bitbuffer_6338_fu_108 <= zext_ln1035_fu_362_p1;
                end if;
            end if; 
        end if;
    end process;

    bits_cntr_fu_104_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    bits_cntr_fu_104 <= bits_cntr_35;
                elsif ((ap_const_boolean_1 = ap_condition_322)) then 
                    bits_cntr_fu_104 <= add_ln1041_fu_245_p2;
                elsif ((ap_const_boolean_1 = ap_condition_319)) then 
                    bits_cntr_fu_104 <= add_ln1046_fu_273_p2;
                end if;
            end if; 
        end if;
    end process;

    done_6_fu_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    done_6_fu_112 <= done_25;
                elsif ((ap_const_boolean_1 = ap_condition_319)) then 
                    done_6_fu_112 <= huffman_eos_stream_dout;
                end if;
            end if; 
        end if;
    end process;

    i_fu_100_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln1035_fu_221_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_100 <= i_2_fu_227_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_100 <= ap_const_lv16_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln1041_reg_414 <= add_ln1041_fu_245_p2;
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                icmp_ln1035_reg_410 <= icmp_ln1035_fu_221_p2;
                icmp_ln1035_reg_410_pp0_iter1_reg <= icmp_ln1035_reg_410;
                or_ln1042_reg_419 <= or_ln1042_fu_267_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln1041_fu_245_p2 <= std_logic_vector(unsigned(bits_cntr_fu_104) + unsigned(ap_const_lv6_38));
    add_ln1046_fu_273_p2 <= std_logic_vector(unsigned(bits_cntr_fu_104) + unsigned(ap_const_lv6_8));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_block_state2_pp0_stage0_iter1, ap_block_state3_pp0_stage0_iter2)
    begin
                ap_block_pp0_stage0_01001 <= (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state3_pp0_stage0_iter2)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_pp0_stage0_iter1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_block_state2_pp0_stage0_iter1, ap_block_state3_pp0_stage0_iter2)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state3_pp0_stage0_iter2)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_pp0_stage0_iter1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_block_state2_pp0_stage0_iter1, ap_block_state3_pp0_stage0_iter2)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state3_pp0_stage0_iter2)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_pp0_stage0_iter1)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(huffman_eos_stream_empty_n, ap_predicate_op34_read_state2)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((ap_predicate_op34_read_state2 = ap_const_boolean_1) and (huffman_eos_stream_empty_n = ap_const_logic_0));
    end process;


    ap_block_state3_pp0_stage0_iter2_assign_proc : process(lz77_output_stream_full_n, icmp_ln1035_reg_410_pp0_iter1_reg, huffman_input_stream_empty_n, ap_predicate_op47_read_state3)
    begin
                ap_block_state3_pp0_stage0_iter2 <= (((ap_predicate_op47_read_state3 = ap_const_boolean_1) and (huffman_input_stream_empty_n = ap_const_logic_0)) or ((icmp_ln1035_reg_410_pp0_iter1_reg = ap_const_lv1_0) and (lz77_output_stream_full_n = ap_const_logic_0)));
    end process;


    ap_condition_319_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln1035_reg_410, or_ln1042_fu_267_p2)
    begin
                ap_condition_319 <= ((or_ln1042_fu_267_p2 = ap_const_lv1_0) and (icmp_ln1035_reg_410 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_322_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln1035_reg_410, or_ln1042_fu_267_p2)
    begin
                ap_condition_322 <= ((or_ln1042_fu_267_p2 = ap_const_lv1_1) and (icmp_ln1035_reg_410 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln1035_fu_221_p2)
    begin
        if (((icmp_ln1035_fu_221_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln1035_reg_410, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln1035_reg_410 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_phi_mux_bitbuffer_7339_phi_fu_183_p4_assign_proc : process(icmp_ln1035_reg_410_pp0_iter1_reg, or_ln1042_reg_419, bitbuffer_fu_348_p3, ap_phi_reg_pp0_iter2_bitbuffer_7339_reg_180, zext_ln1048_fu_357_p1)
    begin
        if ((icmp_ln1035_reg_410_pp0_iter1_reg = ap_const_lv1_0)) then
            if ((or_ln1042_reg_419 = ap_const_lv1_1)) then 
                ap_phi_mux_bitbuffer_7339_phi_fu_183_p4 <= zext_ln1048_fu_357_p1;
            elsif ((or_ln1042_reg_419 = ap_const_lv1_0)) then 
                ap_phi_mux_bitbuffer_7339_phi_fu_183_p4 <= bitbuffer_fu_348_p3;
            else 
                ap_phi_mux_bitbuffer_7339_phi_fu_183_p4 <= ap_phi_reg_pp0_iter2_bitbuffer_7339_reg_180;
            end if;
        else 
            ap_phi_mux_bitbuffer_7339_phi_fu_183_p4 <= ap_phi_reg_pp0_iter2_bitbuffer_7339_reg_180;
        end if; 
    end process;

    ap_phi_reg_pp0_iter2_bitbuffer_7339_reg_180 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";

    ap_predicate_op34_read_state2_assign_proc : process(icmp_ln1035_reg_410, or_ln1042_fu_267_p2)
    begin
                ap_predicate_op34_read_state2 <= ((or_ln1042_fu_267_p2 = ap_const_lv1_0) and (icmp_ln1035_reg_410 = ap_const_lv1_0));
    end process;


    ap_predicate_op47_read_state3_assign_proc : process(icmp_ln1035_reg_410_pp0_iter1_reg, or_ln1042_reg_419)
    begin
                ap_predicate_op47_read_state3 <= ((or_ln1042_reg_419 = ap_const_lv1_0) and (icmp_ln1035_reg_410_pp0_iter1_reg = ap_const_lv1_0));
    end process;


    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_100, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_1 <= ap_const_lv16_0;
        else 
            ap_sig_allocacmp_i_1 <= i_fu_100;
        end if; 
    end process;

    bitbuffer_6338_out <= bitbuffer_6338_fu_108;

    bitbuffer_6338_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1035_reg_410, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1035_reg_410 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            bitbuffer_6338_out_ap_vld <= ap_const_logic_1;
        else 
            bitbuffer_6338_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    bitbuffer_fu_348_p3 <= (tmp_7_fu_338_p4 & or_ln1044_fu_332_p2);
    bits_cntr_5_out <= bits_cntr_fu_104;

    bits_cntr_5_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1035_reg_410, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1035_reg_410 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            bits_cntr_5_out_ap_vld <= ap_const_logic_1;
        else 
            bits_cntr_5_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    done_6_out <= done_6_fu_112;

    done_6_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1035_reg_410, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1035_reg_410 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            done_6_out_ap_vld <= ap_const_logic_1;
        else 
            done_6_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_189_p4 <= bitbuffer_6338_fu_108(31 downto 8);

    huffman_eos_stream_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, huffman_eos_stream_empty_n, ap_predicate_op34_read_state2, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op34_read_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            huffman_eos_stream_blk_n <= huffman_eos_stream_empty_n;
        else 
            huffman_eos_stream_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    huffman_eos_stream_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_predicate_op34_read_state2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op34_read_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            huffman_eos_stream_read <= ap_const_logic_1;
        else 
            huffman_eos_stream_read <= ap_const_logic_0;
        end if; 
    end process;


    huffman_input_stream_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, huffman_input_stream_empty_n, ap_predicate_op47_read_state3, ap_block_pp0_stage0)
    begin
        if (((ap_predicate_op47_read_state3 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            huffman_input_stream_blk_n <= huffman_input_stream_empty_n;
        else 
            huffman_input_stream_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    huffman_input_stream_read_assign_proc : process(ap_enable_reg_pp0_iter2, ap_predicate_op47_read_state3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_predicate_op47_read_state3 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            huffman_input_stream_read <= ap_const_logic_1;
        else 
            huffman_input_stream_read <= ap_const_logic_0;
        end if; 
    end process;

    i_2_fu_227_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_1) + unsigned(ap_const_lv16_1));
    icmp_ln1035_fu_221_p2 <= "1" when (ap_sig_allocacmp_i_1 = empty) else "0";
    icmp_ln1042_fu_261_p2 <= "0" when (tmp_1_fu_251_p4 = ap_const_lv2_0) else "1";

    lz77_output_stream_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, lz77_output_stream_full_n, icmp_ln1035_reg_410_pp0_iter1_reg, ap_block_pp0_stage0)
    begin
        if (((icmp_ln1035_reg_410_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            lz77_output_stream_blk_n <= lz77_output_stream_full_n;
        else 
            lz77_output_stream_blk_n <= ap_const_logic_1;
        end if; 
    end process;

        lz77_output_stream_din <= std_logic_vector(IEEE.numeric_std.resize(signed(tmpVal_fu_302_p3),16));


    lz77_output_stream_write_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln1035_reg_410_pp0_iter1_reg, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1035_reg_410_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            lz77_output_stream_write <= ap_const_logic_1;
        else 
            lz77_output_stream_write <= ap_const_logic_0;
        end if; 
    end process;

    or_ln1042_fu_267_p2 <= (icmp_ln1042_fu_261_p2 or done_6_fu_112);
    or_ln1044_fu_332_p2 <= (trunc_ln1044_fu_328_p1 or grp_fu_189_p4);
    shl_ln1044_fu_322_p2 <= std_logic_vector(shift_left(unsigned(zext_ln1044_fu_315_p1),to_integer(unsigned('0' & zext_ln1044_1_fu_319_p1(31-1 downto 0)))));
    tmpVal_fu_302_p3 <= (ap_const_lv5_10 & trunc_ln1037_fu_298_p1);
    tmp_1_fu_251_p4 <= add_ln1041_fu_245_p2(5 downto 4);
    tmp_7_fu_338_p4 <= shl_ln1044_fu_322_p2(30 downto 24);
    trunc_ln1037_fu_298_p1 <= bitbuffer_6338_fu_108(8 - 1 downto 0);
    trunc_ln1044_fu_328_p1 <= shl_ln1044_fu_322_p2(24 - 1 downto 0);
    zext_ln1035_fu_362_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_phi_mux_bitbuffer_7339_phi_fu_183_p4),32));
    zext_ln1044_1_fu_319_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1041_reg_414),31));
    zext_ln1044_fu_315_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(huffman_input_stream_dout),31));
    zext_ln1048_fu_357_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_fu_189_p4),31));
end behav;
