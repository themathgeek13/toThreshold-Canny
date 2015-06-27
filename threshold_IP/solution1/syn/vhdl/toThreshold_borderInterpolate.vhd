-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2014.4
-- Copyright (C) 2014 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity toThreshold_borderInterpolate is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    p : IN STD_LOGIC_VECTOR (12 downto 0);
    len : IN STD_LOGIC_VECTOR (11 downto 0);
    borderType : IN STD_LOGIC_VECTOR (3 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (14 downto 0);
    ap_ce : IN STD_LOGIC );
end;


architecture behav of toThreshold_borderInterpolate is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_const_lv4_4 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_const_lv13_1FFF : STD_LOGIC_VECTOR (12 downto 0) := "1111111111111";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_const_lv14_3FFE : STD_LOGIC_VECTOR (13 downto 0) := "11111111111110";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal len_read_reg_406 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_read_reg_412 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_reg_ppstg_p_read_reg_412_pp0_it1 : STD_LOGIC_VECTOR (12 downto 0);
    signal len_cast1_cast_fu_73_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal len_cast1_cast_reg_421 : STD_LOGIC_VECTOR (12 downto 0);
    signal or_cond_fu_83_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond_reg_428 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_ppstg_or_cond_reg_428_pp0_it1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_fu_89_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_reg_434 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_151_reg_440 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_fu_103_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_reg_447 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_7_fu_109_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_7_reg_453 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_assign_1_fu_115_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_assign_1_reg_459 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_11_fu_121_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_11_reg_464 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp_fu_133_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp_reg_469 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_p_fu_160_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_p_reg_474 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_p3_fu_170_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_p3_reg_479 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_p2_fu_212_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_p2_reg_484 : STD_LOGIC_VECTOR (12 downto 0);
    signal sel_tmp11_fu_294_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal sel_tmp11_reg_489 : STD_LOGIC_VECTOR (14 downto 0);
    signal sel_tmp18_demorgan_fu_307_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp18_demorgan_reg_494 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp25_fu_312_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp25_reg_499 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp33_fu_318_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp33_reg_504 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp41_fu_335_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp41_reg_509 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp51_fu_347_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp51_reg_514 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_59_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_77_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal rev_fu_67_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_not_fu_127_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_4_fu_139_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_assign_fu_144_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_12_fu_176_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_13_fu_191_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_73_cast_fu_183_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_74_cast_fu_197_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_assign_3_fu_207_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_73_cast_cast_fu_187_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_17_fu_227_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_p2_cast_cast_fu_218_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal sel_tmp1_fu_239_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_assign_cast_fu_151_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_assign_4_fu_233_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal sel_tmp2_fu_243_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal sel_tmp5_demorgan_fu_255_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp5_fu_259_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_fu_155_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp6_fu_265_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp7_fu_270_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_9_fu_165_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp8_fu_276_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp9_fu_282_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp10_fu_288_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_assign_2_fu_201_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal sel_tmp2_cast_fu_251_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal sel_tmp16_demorgan_fu_302_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp39_fu_324_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp40_fu_330_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_15_fu_222_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp53_fu_341_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_p3_cast_cast_fu_359_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_cast1_cast_fu_353_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal sel_tmp19_fu_365_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal sel_tmp20_fu_371_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_p_cast2_cast_fu_356_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal sel_tmp26_fu_378_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal sel_tmp34_fu_385_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_p2_cast_fu_362_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal sel_tmp42_fu_392_p3 : STD_LOGIC_VECTOR (14 downto 0);


begin




    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_ce)) then
                ap_reg_ppstg_or_cond_reg_428_pp0_it1 <= or_cond_reg_428;
                ap_reg_ppstg_p_read_reg_412_pp0_it1 <= p_read_reg_412;
                len_cast1_cast_reg_421(0) <= len_cast1_cast_fu_73_p1(0);
    len_cast1_cast_reg_421(1) <= len_cast1_cast_fu_73_p1(1);
    len_cast1_cast_reg_421(2) <= len_cast1_cast_fu_73_p1(2);
    len_cast1_cast_reg_421(3) <= len_cast1_cast_fu_73_p1(3);
    len_cast1_cast_reg_421(4) <= len_cast1_cast_fu_73_p1(4);
    len_cast1_cast_reg_421(5) <= len_cast1_cast_fu_73_p1(5);
    len_cast1_cast_reg_421(6) <= len_cast1_cast_fu_73_p1(6);
    len_cast1_cast_reg_421(7) <= len_cast1_cast_fu_73_p1(7);
    len_cast1_cast_reg_421(8) <= len_cast1_cast_fu_73_p1(8);
    len_cast1_cast_reg_421(9) <= len_cast1_cast_fu_73_p1(9);
    len_cast1_cast_reg_421(10) <= len_cast1_cast_fu_73_p1(10);
    len_cast1_cast_reg_421(11) <= len_cast1_cast_fu_73_p1(11);
                len_read_reg_406 <= len;
                or_cond_reg_428 <= or_cond_fu_83_p2;
                p_assign_1_reg_459 <= p_assign_1_fu_115_p2;
                p_p2_reg_484 <= p_p2_fu_212_p3;
                p_p_reg_474 <= p_p_fu_160_p3;
                p_read_reg_412 <= p;
                sel_tmp25_reg_499 <= sel_tmp25_fu_312_p2;
                sel_tmp33_reg_504 <= sel_tmp33_fu_318_p2;
                sel_tmp41_reg_509 <= sel_tmp41_fu_335_p2;
                sel_tmp51_reg_514 <= sel_tmp51_fu_347_p2;
                sel_tmp_reg_469 <= sel_tmp_fu_133_p2;
                tmp_11_reg_464 <= tmp_11_fu_121_p2;
                tmp_151_reg_440 <= p(12 downto 12);
                tmp_2_reg_434 <= tmp_2_fu_89_p2;
                tmp_5_reg_447 <= tmp_5_fu_103_p2;
                tmp_7_reg_453 <= tmp_7_fu_109_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_ce) and (or_cond_reg_428 = ap_const_lv1_0))) then
                p_p3_reg_479 <= p_p3_fu_170_p3;
                sel_tmp11_reg_489 <= sel_tmp11_fu_294_p3;
                sel_tmp18_demorgan_reg_494 <= sel_tmp18_demorgan_fu_307_p2;
            end if;
        end if;
    end process;
    len_cast1_cast_reg_421(12) <= '0';
    ap_return <= 
        p_p2_cast_fu_362_p1 when (sel_tmp51_reg_514(0) = '1') else 
        sel_tmp42_fu_392_p3;
    len_cast1_cast_fu_73_p1 <= std_logic_vector(resize(unsigned(len),13));
    or_cond_fu_83_p2 <= (tmp_1_fu_77_p2 and rev_fu_67_p2);
    p_assign_1_fu_115_p2 <= (p xor ap_const_lv13_1FFF);
    p_assign_2_fu_201_p2 <= std_logic_vector(unsigned(tmp_73_cast_fu_183_p1) + unsigned(tmp_74_cast_fu_197_p1));
    p_assign_3_fu_207_p2 <= std_logic_vector(unsigned(ap_const_lv13_0) - unsigned(p_read_reg_412));
    p_assign_4_fu_233_p2 <= std_logic_vector(unsigned(tmp_17_fu_227_p2) - unsigned(p_p2_cast_cast_fu_218_p1));
        p_assign_cast_fu_151_p1 <= std_logic_vector(resize(signed(p_assign_fu_144_p3),14));

    p_assign_fu_144_p3 <= 
        ap_const_lv13_0 when (tmp_151_reg_440(0) = '1') else 
        tmp_4_fu_139_p2;
        p_cast1_cast_fu_353_p1 <= std_logic_vector(resize(signed(ap_reg_ppstg_p_read_reg_412_pp0_it1),15));

    p_p2_cast_cast_fu_218_p1 <= std_logic_vector(resize(unsigned(p_p2_fu_212_p3),14));
    p_p2_cast_fu_362_p1 <= std_logic_vector(resize(unsigned(p_p2_reg_484),15));
    p_p2_fu_212_p3 <= 
        p_assign_3_fu_207_p2 when (tmp_151_reg_440(0) = '1') else 
        p_read_reg_412;
        p_p3_cast_cast_fu_359_p1 <= std_logic_vector(resize(signed(p_p3_reg_479),15));

    p_p3_fu_170_p3 <= 
        ap_const_lv13_1FFF when (tmp_11_reg_464(0) = '1') else 
        p_read_reg_412;
        p_p_cast2_cast_fu_356_p1 <= std_logic_vector(resize(signed(p_p_reg_474),15));

    p_p_fu_160_p3 <= 
        p_assign_1_reg_459 when (tmp_151_reg_440(0) = '1') else 
        p_read_reg_412;
    rev_fu_67_p2 <= (tmp_fu_59_p3 xor ap_const_lv1_1);
    sel_tmp10_fu_288_p2 <= (sel_tmp8_fu_276_p2 and sel_tmp9_fu_282_p2);
    sel_tmp11_fu_294_p3 <= 
        p_assign_2_fu_201_p2 when (sel_tmp10_fu_288_p2(0) = '1') else 
        sel_tmp2_cast_fu_251_p1;
    sel_tmp16_demorgan_fu_302_p2 <= (sel_tmp5_demorgan_fu_255_p2 or tmp_5_reg_447);
    sel_tmp18_demorgan_fu_307_p2 <= (sel_tmp16_demorgan_fu_302_p2 or tmp_7_reg_453);
    sel_tmp19_fu_365_p3 <= 
        sel_tmp11_reg_489 when (sel_tmp18_demorgan_reg_494(0) = '1') else 
        p_p3_cast_cast_fu_359_p1;
    sel_tmp1_fu_239_p2 <= (tmp_2_reg_434 and sel_tmp_reg_469);
    sel_tmp20_fu_371_p3 <= 
        p_cast1_cast_fu_353_p1 when (ap_reg_ppstg_or_cond_reg_428_pp0_it1(0) = '1') else 
        sel_tmp19_fu_365_p3;
    sel_tmp25_fu_312_p2 <= (sel_tmp6_fu_265_p2 and tmp_6_fu_155_p2);
    sel_tmp26_fu_378_p3 <= 
        ap_const_lv15_0 when (sel_tmp25_reg_499(0) = '1') else 
        sel_tmp20_fu_371_p3;
        sel_tmp2_cast_fu_251_p1 <= std_logic_vector(resize(signed(sel_tmp2_fu_243_p3),15));

    sel_tmp2_fu_243_p3 <= 
        p_assign_cast_fu_151_p1 when (sel_tmp1_fu_239_p2(0) = '1') else 
        p_assign_4_fu_233_p2;
    sel_tmp33_fu_318_p2 <= (sel_tmp8_fu_276_p2 and tmp_9_fu_165_p2);
    sel_tmp34_fu_385_p3 <= 
        p_p_cast2_cast_fu_356_p1 when (sel_tmp33_reg_504(0) = '1') else 
        sel_tmp26_fu_378_p3;
    sel_tmp39_fu_324_p2 <= (sel_tmp16_demorgan_fu_302_p2 xor ap_const_lv1_1);
    sel_tmp40_fu_330_p2 <= (tmp_7_reg_453 and sel_tmp39_fu_324_p2);
    sel_tmp41_fu_335_p2 <= (sel_tmp40_fu_330_p2 and tmp_6_fu_155_p2);
    sel_tmp42_fu_392_p3 <= 
        ap_const_lv15_0 when (sel_tmp41_reg_509(0) = '1') else 
        sel_tmp34_fu_385_p3;
    sel_tmp51_fu_347_p2 <= (tmp53_fu_341_p2 and sel_tmp40_fu_330_p2);
    sel_tmp5_demorgan_fu_255_p2 <= (or_cond_reg_428 or tmp_2_reg_434);
    sel_tmp5_fu_259_p2 <= (sel_tmp5_demorgan_fu_255_p2 xor ap_const_lv1_1);
    sel_tmp6_fu_265_p2 <= (tmp_5_reg_447 and sel_tmp5_fu_259_p2);
    sel_tmp7_fu_270_p2 <= (tmp_6_fu_155_p2 xor ap_const_lv1_1);
    sel_tmp8_fu_276_p2 <= (sel_tmp6_fu_265_p2 and sel_tmp7_fu_270_p2);
    sel_tmp9_fu_282_p2 <= (tmp_9_fu_165_p2 xor ap_const_lv1_1);
    sel_tmp_fu_133_p2 <= (tmp_fu_59_p3 or tmp_1_not_fu_127_p2);
    tmp53_fu_341_p2 <= (tmp_15_fu_222_p2 and sel_tmp7_fu_270_p2);
    tmp_11_fu_121_p2 <= "1" when (borderType = ap_const_lv4_0) else "0";
    tmp_12_fu_176_p3 <= (len_read_reg_406 & ap_const_lv1_0);
    tmp_13_fu_191_p2 <= (p_p_fu_160_p3 xor ap_const_lv13_1FFF);
    tmp_15_fu_222_p2 <= "1" when (unsigned(p_p2_fu_212_p3) < unsigned(len_cast1_cast_reg_421)) else "0";
    tmp_17_fu_227_p2 <= std_logic_vector(unsigned(tmp_73_cast_cast_fu_187_p1) + unsigned(ap_const_lv14_3FFE));
    tmp_1_fu_77_p2 <= "1" when (signed(len_cast1_cast_fu_73_p1) > signed(p)) else "0";
    tmp_1_not_fu_127_p2 <= (tmp_1_fu_77_p2 xor ap_const_lv1_1);
    tmp_2_fu_89_p2 <= "1" when (borderType = ap_const_lv4_1) else "0";
    tmp_4_fu_139_p2 <= std_logic_vector(unsigned(len_cast1_cast_reg_421) + unsigned(ap_const_lv13_1FFF));
    tmp_5_fu_103_p2 <= "1" when (borderType = ap_const_lv4_2) else "0";
    tmp_6_fu_155_p2 <= "1" when (len_read_reg_406 = ap_const_lv12_1) else "0";
    tmp_73_cast_cast_fu_187_p1 <= std_logic_vector(resize(unsigned(tmp_12_fu_176_p3),14));
    tmp_73_cast_fu_183_p1 <= std_logic_vector(resize(unsigned(tmp_12_fu_176_p3),15));
        tmp_74_cast_fu_197_p1 <= std_logic_vector(resize(signed(tmp_13_fu_191_p2),15));

    tmp_7_fu_109_p2 <= "1" when (borderType = ap_const_lv4_4) else "0";
    tmp_9_fu_165_p2 <= "1" when (signed(p_p_fu_160_p3) < signed(len_cast1_cast_reg_421)) else "0";
    tmp_fu_59_p3 <= p(12 downto 12);
end behav;