-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2014.4
-- Copyright (C) 2014 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity toThreshold_CvtColor is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_src_rows_V_read : IN STD_LOGIC_VECTOR (11 downto 0);
    p_src_cols_V_read : IN STD_LOGIC_VECTOR (11 downto 0);
    p_src_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    p_src_data_stream_0_V_empty_n : IN STD_LOGIC;
    p_src_data_stream_0_V_read : OUT STD_LOGIC;
    p_src_data_stream_1_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    p_src_data_stream_1_V_empty_n : IN STD_LOGIC;
    p_src_data_stream_1_V_read : OUT STD_LOGIC;
    p_src_data_stream_2_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    p_src_data_stream_2_V_empty_n : IN STD_LOGIC;
    p_src_data_stream_2_V_read : OUT STD_LOGIC;
    p_dst_data_stream_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_dst_data_stream_V_full_n : IN STD_LOGIC;
    p_dst_data_stream_V_write : OUT STD_LOGIC );
end;


architecture behav of toThreshold_CvtColor is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_pp0_stg0_fsm_2 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_st8_fsm_3 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv31_4C8B43 : STD_LOGIC_VECTOR (30 downto 0) := "0000000010011001000101101000011";
    constant ap_const_lv30_1D2F1A : STD_LOGIC_VECTOR (29 downto 0) := "000000000111010010111100011010";
    constant ap_const_lv32_9645A1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000100101100100010110100001";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_23 : BOOLEAN;
    signal j_reg_144 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_sig_bdd_55 : BOOLEAN;
    signal exitcond2_fu_160_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_67 : BOOLEAN;
    signal i_1_fu_165_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_1_reg_308 : STD_LOGIC_VECTOR (10 downto 0);
    signal exitcond_fu_175_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_reg_313 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_pp0_stg0_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_78 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it0 : STD_LOGIC := '0';
    signal ap_sig_bdd_92 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it1 : STD_LOGIC := '0';
    signal ap_reg_ppiten_pp0_it2 : STD_LOGIC := '0';
    signal ap_reg_ppiten_pp0_it3 : STD_LOGIC := '0';
    signal ap_reg_ppstg_exitcond_reg_313_pp0_it3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_bdd_104 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it4 : STD_LOGIC := '0';
    signal ap_reg_ppstg_exitcond_reg_313_pp0_it1 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_ppstg_exitcond_reg_313_pp0_it2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_1_fu_180_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_118_reg_322 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_119_reg_327 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_reg_ppstg_tmp_119_reg_327_pp0_it2 : STD_LOGIC_VECTOR (7 downto 0);
    signal r_V_4_i_fu_190_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal r_V_4_i_reg_332 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_i_cast_fu_214_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_i_cast_reg_337 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_13_reg_342 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_reg_347 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_115_reg_352 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reg_133 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_sig_cseq_ST_st8_fsm_3 : STD_LOGIC;
    signal ap_sig_bdd_153 : BOOLEAN;
    signal i_cast_fu_156_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal j_cast_fu_171_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal r_V_4_i_fu_190_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal r_V_fu_199_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal r_V_fu_199_p2 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp1_i_cast_fu_205_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal p_Val2_11_fu_209_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal r_V_3_i_fu_221_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal r_V_3_i_fu_221_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_1_fu_227_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_82_i_i_i_fu_258_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Val2_14_fu_261_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_116_fu_266_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_4_i_i_i_not_fu_274_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal not_carry_fu_279_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal r_V_3_i_fu_221_p00 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_4_i_fu_190_p00 : STD_LOGIC_VECTOR (30 downto 0);
    signal r_V_fu_199_p00 : STD_LOGIC_VECTOR (29 downto 0);


begin




    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- ap_done_reg assign process. --
    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_continue)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond2_fu_160_p2 = ap_const_lv1_0)))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it0 assign process. --
    ap_reg_ppiten_pp0_it0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4)))) and not((exitcond_fu_175_p2 = ap_const_lv1_0)))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond2_fu_160_p2 = ap_const_lv1_0))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it1 assign process. --
    ap_reg_ppiten_pp0_it1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4)))) and (exitcond_fu_175_p2 = ap_const_lv1_0))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
                elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond2_fu_160_p2 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4)))) and not((exitcond_fu_175_p2 = ap_const_lv1_0))))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it2 assign process. --
    ap_reg_ppiten_pp0_it2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
            else
                if (not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4))))) then 
                    ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it3 assign process. --
    ap_reg_ppiten_pp0_it3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it3 <= ap_const_logic_0;
            else
                if (not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4))))) then 
                    ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it4 assign process. --
    ap_reg_ppiten_pp0_it4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it4 <= ap_const_logic_0;
            else
                if (not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4))))) then 
                    ap_reg_ppiten_pp0_it4 <= ap_reg_ppiten_pp0_it3;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond2_fu_160_p2 = ap_const_lv1_0))) then 
                    ap_reg_ppiten_pp0_it4 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- i_reg_133 assign process. --
    i_reg_133_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_55))) then 
                i_reg_133 <= ap_const_lv11_0;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_3)) then 
                i_reg_133 <= i_1_reg_308;
            end if; 
        end if;
    end process;

    -- j_reg_144 assign process. --
    j_reg_144_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4)))) and (exitcond_fu_175_p2 = ap_const_lv1_0))) then 
                j_reg_144 <= j_1_fu_180_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond2_fu_160_p2 = ap_const_lv1_0))) then 
                j_reg_144 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4)))))) then
                ap_reg_ppstg_exitcond_reg_313_pp0_it1 <= exitcond_reg_313;
                exitcond_reg_313 <= exitcond_fu_175_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4))))) then
                ap_reg_ppstg_exitcond_reg_313_pp0_it2 <= ap_reg_ppstg_exitcond_reg_313_pp0_it1;
                ap_reg_ppstg_exitcond_reg_313_pp0_it3 <= ap_reg_ppstg_exitcond_reg_313_pp0_it2;
                ap_reg_ppstg_tmp_119_reg_327_pp0_it2 <= tmp_119_reg_327;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                i_1_reg_308 <= i_1_fu_165_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4)))) and (ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_313_pp0_it2))) then
                p_Val2_13_reg_342 <= r_V_1_fu_227_p2(31 downto 24);
                tmp_115_reg_352 <= r_V_1_fu_227_p2(31 downto 31);
                tmp_reg_347 <= r_V_1_fu_227_p2(23 downto 23);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_reg_313 = ap_const_lv1_0) and not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4)))))) then
                r_V_4_i_reg_332 <= r_V_4_i_fu_190_p2;
                tmp_118_reg_322 <= p_src_data_stream_0_V_dout;
                tmp_119_reg_327 <= p_src_data_stream_1_V_dout;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4)))) and (ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_313_pp0_it1))) then
                tmp_i_cast_reg_337(0) <= tmp_i_cast_fu_214_p1(0);
    tmp_i_cast_reg_337(1) <= tmp_i_cast_fu_214_p1(1);
    tmp_i_cast_reg_337(2) <= tmp_i_cast_fu_214_p1(2);
    tmp_i_cast_reg_337(3) <= tmp_i_cast_fu_214_p1(3);
    tmp_i_cast_reg_337(4) <= tmp_i_cast_fu_214_p1(4);
    tmp_i_cast_reg_337(5) <= tmp_i_cast_fu_214_p1(5);
    tmp_i_cast_reg_337(6) <= tmp_i_cast_fu_214_p1(6);
    tmp_i_cast_reg_337(7) <= tmp_i_cast_fu_214_p1(7);
    tmp_i_cast_reg_337(8) <= tmp_i_cast_fu_214_p1(8);
    tmp_i_cast_reg_337(9) <= tmp_i_cast_fu_214_p1(9);
    tmp_i_cast_reg_337(10) <= tmp_i_cast_fu_214_p1(10);
    tmp_i_cast_reg_337(11) <= tmp_i_cast_fu_214_p1(11);
    tmp_i_cast_reg_337(12) <= tmp_i_cast_fu_214_p1(12);
    tmp_i_cast_reg_337(13) <= tmp_i_cast_fu_214_p1(13);
    tmp_i_cast_reg_337(14) <= tmp_i_cast_fu_214_p1(14);
    tmp_i_cast_reg_337(15) <= tmp_i_cast_fu_214_p1(15);
    tmp_i_cast_reg_337(16) <= tmp_i_cast_fu_214_p1(16);
    tmp_i_cast_reg_337(17) <= tmp_i_cast_fu_214_p1(17);
    tmp_i_cast_reg_337(18) <= tmp_i_cast_fu_214_p1(18);
    tmp_i_cast_reg_337(19) <= tmp_i_cast_fu_214_p1(19);
    tmp_i_cast_reg_337(20) <= tmp_i_cast_fu_214_p1(20);
    tmp_i_cast_reg_337(21) <= tmp_i_cast_fu_214_p1(21);
    tmp_i_cast_reg_337(22) <= tmp_i_cast_fu_214_p1(22);
    tmp_i_cast_reg_337(23) <= tmp_i_cast_fu_214_p1(23);
    tmp_i_cast_reg_337(24) <= tmp_i_cast_fu_214_p1(24);
    tmp_i_cast_reg_337(25) <= tmp_i_cast_fu_214_p1(25);
    tmp_i_cast_reg_337(26) <= tmp_i_cast_fu_214_p1(26);
    tmp_i_cast_reg_337(27) <= tmp_i_cast_fu_214_p1(27);
    tmp_i_cast_reg_337(28) <= tmp_i_cast_fu_214_p1(28);
    tmp_i_cast_reg_337(29) <= tmp_i_cast_fu_214_p1(29);
    tmp_i_cast_reg_337(30) <= tmp_i_cast_fu_214_p1(30);
            end if;
        end if;
    end process;
    tmp_i_cast_reg_337(31) <= '0';

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_sig_bdd_55, exitcond2_fu_160_p2, exitcond_fu_175_p2, ap_reg_ppiten_pp0_it0, ap_sig_bdd_92, ap_reg_ppiten_pp0_it1, ap_reg_ppiten_pp0_it3, ap_sig_bdd_104, ap_reg_ppiten_pp0_it4)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not(ap_sig_bdd_55)) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((exitcond2_fu_160_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_2;
                end if;
            when ap_ST_pp0_stg0_fsm_2 => 
                if ((not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it4) and not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4)))) and not((ap_const_logic_1 = ap_reg_ppiten_pp0_it3)))) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4)))) and not((exitcond_fu_175_p2 = ap_const_lv1_0)) and not((ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_2;
                elsif ((((ap_const_logic_1 = ap_reg_ppiten_pp0_it4) and not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4)))) and not((ap_const_logic_1 = ap_reg_ppiten_pp0_it3))) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4)))) and not((exitcond_fu_175_p2 = ap_const_lv1_0)) and not((ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then
                    ap_NS_fsm <= ap_ST_st8_fsm_3;
                else
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_2;
                end if;
            when ap_ST_st8_fsm_3 => 
                ap_NS_fsm <= ap_ST_st2_fsm_1;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_done_reg, exitcond2_fu_160_p2, ap_sig_cseq_ST_st2_fsm_1)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond2_fu_160_p2 = ap_const_lv1_0))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(exitcond2_fu_160_p2, ap_sig_cseq_ST_st2_fsm_1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond2_fu_160_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_bdd_104 assign process. --
    ap_sig_bdd_104_assign_proc : process(p_dst_data_stream_V_full_n, ap_reg_ppstg_exitcond_reg_313_pp0_it3)
    begin
                ap_sig_bdd_104 <= ((p_dst_data_stream_V_full_n = ap_const_logic_0) and (ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_313_pp0_it3));
    end process;


    -- ap_sig_bdd_153 assign process. --
    ap_sig_bdd_153_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_153 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    -- ap_sig_bdd_23 assign process. --
    ap_sig_bdd_23_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_23 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_55 assign process. --
    ap_sig_bdd_55_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_sig_bdd_55 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    -- ap_sig_bdd_67 assign process. --
    ap_sig_bdd_67_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_67 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_bdd_78 assign process. --
    ap_sig_bdd_78_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_78 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_bdd_92 assign process. --
    ap_sig_bdd_92_assign_proc : process(p_src_data_stream_0_V_empty_n, p_src_data_stream_1_V_empty_n, p_src_data_stream_2_V_empty_n, exitcond_reg_313)
    begin
                ap_sig_bdd_92 <= (((p_src_data_stream_0_V_empty_n = ap_const_logic_0) and (exitcond_reg_313 = ap_const_lv1_0)) or ((exitcond_reg_313 = ap_const_lv1_0) and (p_src_data_stream_1_V_empty_n = ap_const_logic_0)) or ((exitcond_reg_313 = ap_const_lv1_0) and (p_src_data_stream_2_V_empty_n = ap_const_logic_0)));
    end process;


    -- ap_sig_cseq_ST_pp0_stg0_fsm_2 assign process. --
    ap_sig_cseq_ST_pp0_stg0_fsm_2_assign_proc : process(ap_sig_bdd_78)
    begin
        if (ap_sig_bdd_78) then 
            ap_sig_cseq_ST_pp0_stg0_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp0_stg0_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_23)
    begin
        if (ap_sig_bdd_23) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st2_fsm_1 assign process. --
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_67)
    begin
        if (ap_sig_bdd_67) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st8_fsm_3 assign process. --
    ap_sig_cseq_ST_st8_fsm_3_assign_proc : process(ap_sig_bdd_153)
    begin
        if (ap_sig_bdd_153) then 
            ap_sig_cseq_ST_st8_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st8_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond2_fu_160_p2 <= "1" when (i_cast_fu_156_p1 = p_src_rows_V_read) else "0";
    exitcond_fu_175_p2 <= "1" when (j_cast_fu_171_p1 = p_src_cols_V_read) else "0";
    i_1_fu_165_p2 <= std_logic_vector(unsigned(i_reg_133) + unsigned(ap_const_lv11_1));
    i_cast_fu_156_p1 <= std_logic_vector(resize(unsigned(i_reg_133),12));
    j_1_fu_180_p2 <= std_logic_vector(unsigned(j_reg_144) + unsigned(ap_const_lv11_1));
    j_cast_fu_171_p1 <= std_logic_vector(resize(unsigned(j_reg_144),12));
    not_carry_fu_279_p2 <= (tmp_116_fu_266_p3 or p_Result_4_i_i_i_not_fu_274_p2);
    p_Result_4_i_i_i_not_fu_274_p2 <= (tmp_115_reg_352 xor ap_const_lv1_1);
    p_Val2_11_fu_209_p2 <= std_logic_vector(unsigned(r_V_4_i_reg_332) + unsigned(tmp1_i_cast_fu_205_p1));
    p_Val2_14_fu_261_p2 <= std_logic_vector(unsigned(p_Val2_13_reg_342) + unsigned(tmp_82_i_i_i_fu_258_p1));
    p_dst_data_stream_V_din <= 
        p_Val2_14_fu_261_p2 when (not_carry_fu_279_p2(0) = '1') else 
        ap_const_lv8_FF;

    -- p_dst_data_stream_V_write assign process. --
    p_dst_data_stream_V_write_assign_proc : process(ap_sig_bdd_92, ap_reg_ppiten_pp0_it1, ap_reg_ppstg_exitcond_reg_313_pp0_it3, ap_sig_bdd_104, ap_reg_ppiten_pp0_it4)
    begin
        if (((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_313_pp0_it3) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4) and not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4)))))) then 
            p_dst_data_stream_V_write <= ap_const_logic_1;
        else 
            p_dst_data_stream_V_write <= ap_const_logic_0;
        end if; 
    end process;


    -- p_src_data_stream_0_V_read assign process. --
    p_src_data_stream_0_V_read_assign_proc : process(exitcond_reg_313, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_92, ap_reg_ppiten_pp0_it1, ap_sig_bdd_104, ap_reg_ppiten_pp0_it4)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_reg_313 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4)))))) then 
            p_src_data_stream_0_V_read <= ap_const_logic_1;
        else 
            p_src_data_stream_0_V_read <= ap_const_logic_0;
        end if; 
    end process;


    -- p_src_data_stream_1_V_read assign process. --
    p_src_data_stream_1_V_read_assign_proc : process(exitcond_reg_313, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_92, ap_reg_ppiten_pp0_it1, ap_sig_bdd_104, ap_reg_ppiten_pp0_it4)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_reg_313 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4)))))) then 
            p_src_data_stream_1_V_read <= ap_const_logic_1;
        else 
            p_src_data_stream_1_V_read <= ap_const_logic_0;
        end if; 
    end process;


    -- p_src_data_stream_2_V_read assign process. --
    p_src_data_stream_2_V_read_assign_proc : process(exitcond_reg_313, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_92, ap_reg_ppiten_pp0_it1, ap_sig_bdd_104, ap_reg_ppiten_pp0_it4)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_reg_313 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_sig_bdd_92 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_104 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it4)))))) then 
            p_src_data_stream_2_V_read <= ap_const_logic_1;
        else 
            p_src_data_stream_2_V_read <= ap_const_logic_0;
        end if; 
    end process;

    r_V_1_fu_227_p2 <= std_logic_vector(unsigned(r_V_3_i_fu_221_p2) + unsigned(tmp_i_cast_reg_337));
    r_V_3_i_fu_221_p0 <= r_V_3_i_fu_221_p00(8 - 1 downto 0);
    r_V_3_i_fu_221_p00 <= std_logic_vector(resize(unsigned(ap_reg_ppstg_tmp_119_reg_327_pp0_it2),32));
    r_V_3_i_fu_221_p2 <= std_logic_vector(resize(unsigned(r_V_3_i_fu_221_p0) * unsigned(ap_const_lv32_9645A1), 32));
    r_V_4_i_fu_190_p0 <= r_V_4_i_fu_190_p00(8 - 1 downto 0);
    r_V_4_i_fu_190_p00 <= std_logic_vector(resize(unsigned(p_src_data_stream_2_V_dout),31));
    r_V_4_i_fu_190_p2 <= std_logic_vector(resize(unsigned(r_V_4_i_fu_190_p0) * unsigned(ap_const_lv31_4C8B43), 31));
    r_V_fu_199_p0 <= r_V_fu_199_p00(8 - 1 downto 0);
    r_V_fu_199_p00 <= std_logic_vector(resize(unsigned(tmp_118_reg_322),30));
    r_V_fu_199_p2 <= std_logic_vector(resize(unsigned(r_V_fu_199_p0) * unsigned(ap_const_lv30_1D2F1A), 30));
    tmp1_i_cast_fu_205_p1 <= std_logic_vector(resize(unsigned(r_V_fu_199_p2),31));
    tmp_116_fu_266_p3 <= p_Val2_14_fu_261_p2(7 downto 7);
    tmp_82_i_i_i_fu_258_p1 <= std_logic_vector(resize(unsigned(tmp_reg_347),8));
    tmp_i_cast_fu_214_p1 <= std_logic_vector(resize(unsigned(p_Val2_11_fu_209_p2),32));
end behav;
