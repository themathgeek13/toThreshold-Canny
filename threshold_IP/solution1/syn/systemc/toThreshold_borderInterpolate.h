// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _toThreshold_borderInterpolate_HH_
#define _toThreshold_borderInterpolate_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct toThreshold_borderInterpolate : public sc_module {
    // Port declarations 7
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<13> > p;
    sc_in< sc_lv<12> > len;
    sc_in< sc_lv<4> > borderType;
    sc_out< sc_lv<15> > ap_return;
    sc_in< sc_logic > ap_ce;


    // Module declarations
    toThreshold_borderInterpolate(sc_module_name name);
    SC_HAS_PROCESS(toThreshold_borderInterpolate);

    ~toThreshold_borderInterpolate();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<12> > len_read_reg_406;
    sc_signal< sc_lv<13> > p_read_reg_412;
    sc_signal< sc_lv<13> > ap_reg_ppstg_p_read_reg_412_pp0_it1;
    sc_signal< sc_lv<13> > len_cast1_cast_fu_73_p1;
    sc_signal< sc_lv<13> > len_cast1_cast_reg_421;
    sc_signal< sc_lv<1> > or_cond_fu_83_p2;
    sc_signal< sc_lv<1> > or_cond_reg_428;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_reg_428_pp0_it1;
    sc_signal< sc_lv<1> > tmp_2_fu_89_p2;
    sc_signal< sc_lv<1> > tmp_2_reg_434;
    sc_signal< sc_lv<1> > tmp_151_reg_440;
    sc_signal< sc_lv<1> > tmp_5_fu_103_p2;
    sc_signal< sc_lv<1> > tmp_5_reg_447;
    sc_signal< sc_lv<1> > tmp_7_fu_109_p2;
    sc_signal< sc_lv<1> > tmp_7_reg_453;
    sc_signal< sc_lv<13> > p_assign_1_fu_115_p2;
    sc_signal< sc_lv<13> > p_assign_1_reg_459;
    sc_signal< sc_lv<1> > tmp_11_fu_121_p2;
    sc_signal< sc_lv<1> > tmp_11_reg_464;
    sc_signal< sc_lv<1> > sel_tmp_fu_133_p2;
    sc_signal< sc_lv<1> > sel_tmp_reg_469;
    sc_signal< sc_lv<13> > p_p_fu_160_p3;
    sc_signal< sc_lv<13> > p_p_reg_474;
    sc_signal< sc_lv<13> > p_p3_fu_170_p3;
    sc_signal< sc_lv<13> > p_p3_reg_479;
    sc_signal< sc_lv<13> > p_p2_fu_212_p3;
    sc_signal< sc_lv<13> > p_p2_reg_484;
    sc_signal< sc_lv<15> > sel_tmp11_fu_294_p3;
    sc_signal< sc_lv<15> > sel_tmp11_reg_489;
    sc_signal< sc_lv<1> > sel_tmp18_demorgan_fu_307_p2;
    sc_signal< sc_lv<1> > sel_tmp18_demorgan_reg_494;
    sc_signal< sc_lv<1> > sel_tmp25_fu_312_p2;
    sc_signal< sc_lv<1> > sel_tmp25_reg_499;
    sc_signal< sc_lv<1> > sel_tmp33_fu_318_p2;
    sc_signal< sc_lv<1> > sel_tmp33_reg_504;
    sc_signal< sc_lv<1> > sel_tmp41_fu_335_p2;
    sc_signal< sc_lv<1> > sel_tmp41_reg_509;
    sc_signal< sc_lv<1> > sel_tmp51_fu_347_p2;
    sc_signal< sc_lv<1> > sel_tmp51_reg_514;
    sc_signal< sc_lv<1> > tmp_fu_59_p3;
    sc_signal< sc_lv<1> > tmp_1_fu_77_p2;
    sc_signal< sc_lv<1> > rev_fu_67_p2;
    sc_signal< sc_lv<1> > tmp_1_not_fu_127_p2;
    sc_signal< sc_lv<13> > tmp_4_fu_139_p2;
    sc_signal< sc_lv<13> > p_assign_fu_144_p3;
    sc_signal< sc_lv<13> > tmp_12_fu_176_p3;
    sc_signal< sc_lv<13> > tmp_13_fu_191_p2;
    sc_signal< sc_lv<15> > tmp_73_cast_fu_183_p1;
    sc_signal< sc_lv<15> > tmp_74_cast_fu_197_p1;
    sc_signal< sc_lv<13> > p_assign_3_fu_207_p2;
    sc_signal< sc_lv<14> > tmp_73_cast_cast_fu_187_p1;
    sc_signal< sc_lv<14> > tmp_17_fu_227_p2;
    sc_signal< sc_lv<14> > p_p2_cast_cast_fu_218_p1;
    sc_signal< sc_lv<1> > sel_tmp1_fu_239_p2;
    sc_signal< sc_lv<14> > p_assign_cast_fu_151_p1;
    sc_signal< sc_lv<14> > p_assign_4_fu_233_p2;
    sc_signal< sc_lv<14> > sel_tmp2_fu_243_p3;
    sc_signal< sc_lv<1> > sel_tmp5_demorgan_fu_255_p2;
    sc_signal< sc_lv<1> > sel_tmp5_fu_259_p2;
    sc_signal< sc_lv<1> > tmp_6_fu_155_p2;
    sc_signal< sc_lv<1> > sel_tmp6_fu_265_p2;
    sc_signal< sc_lv<1> > sel_tmp7_fu_270_p2;
    sc_signal< sc_lv<1> > tmp_9_fu_165_p2;
    sc_signal< sc_lv<1> > sel_tmp8_fu_276_p2;
    sc_signal< sc_lv<1> > sel_tmp9_fu_282_p2;
    sc_signal< sc_lv<1> > sel_tmp10_fu_288_p2;
    sc_signal< sc_lv<15> > p_assign_2_fu_201_p2;
    sc_signal< sc_lv<15> > sel_tmp2_cast_fu_251_p1;
    sc_signal< sc_lv<1> > sel_tmp16_demorgan_fu_302_p2;
    sc_signal< sc_lv<1> > sel_tmp39_fu_324_p2;
    sc_signal< sc_lv<1> > sel_tmp40_fu_330_p2;
    sc_signal< sc_lv<1> > tmp_15_fu_222_p2;
    sc_signal< sc_lv<1> > tmp53_fu_341_p2;
    sc_signal< sc_lv<15> > p_p3_cast_cast_fu_359_p1;
    sc_signal< sc_lv<15> > p_cast1_cast_fu_353_p1;
    sc_signal< sc_lv<15> > sel_tmp19_fu_365_p3;
    sc_signal< sc_lv<15> > sel_tmp20_fu_371_p3;
    sc_signal< sc_lv<15> > p_p_cast2_cast_fu_356_p1;
    sc_signal< sc_lv<15> > sel_tmp26_fu_378_p3;
    sc_signal< sc_lv<15> > sel_tmp34_fu_385_p3;
    sc_signal< sc_lv<15> > p_p2_cast_fu_362_p1;
    sc_signal< sc_lv<15> > sel_tmp42_fu_392_p3;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<13> ap_const_lv13_1FFF;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<13> ap_const_lv13_0;
    static const sc_lv<12> ap_const_lv12_1;
    static const sc_lv<14> ap_const_lv14_3FFE;
    static const sc_lv<15> ap_const_lv15_0;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_return();
    void thread_len_cast1_cast_fu_73_p1();
    void thread_or_cond_fu_83_p2();
    void thread_p_assign_1_fu_115_p2();
    void thread_p_assign_2_fu_201_p2();
    void thread_p_assign_3_fu_207_p2();
    void thread_p_assign_4_fu_233_p2();
    void thread_p_assign_cast_fu_151_p1();
    void thread_p_assign_fu_144_p3();
    void thread_p_cast1_cast_fu_353_p1();
    void thread_p_p2_cast_cast_fu_218_p1();
    void thread_p_p2_cast_fu_362_p1();
    void thread_p_p2_fu_212_p3();
    void thread_p_p3_cast_cast_fu_359_p1();
    void thread_p_p3_fu_170_p3();
    void thread_p_p_cast2_cast_fu_356_p1();
    void thread_p_p_fu_160_p3();
    void thread_rev_fu_67_p2();
    void thread_sel_tmp10_fu_288_p2();
    void thread_sel_tmp11_fu_294_p3();
    void thread_sel_tmp16_demorgan_fu_302_p2();
    void thread_sel_tmp18_demorgan_fu_307_p2();
    void thread_sel_tmp19_fu_365_p3();
    void thread_sel_tmp1_fu_239_p2();
    void thread_sel_tmp20_fu_371_p3();
    void thread_sel_tmp25_fu_312_p2();
    void thread_sel_tmp26_fu_378_p3();
    void thread_sel_tmp2_cast_fu_251_p1();
    void thread_sel_tmp2_fu_243_p3();
    void thread_sel_tmp33_fu_318_p2();
    void thread_sel_tmp34_fu_385_p3();
    void thread_sel_tmp39_fu_324_p2();
    void thread_sel_tmp40_fu_330_p2();
    void thread_sel_tmp41_fu_335_p2();
    void thread_sel_tmp42_fu_392_p3();
    void thread_sel_tmp51_fu_347_p2();
    void thread_sel_tmp5_demorgan_fu_255_p2();
    void thread_sel_tmp5_fu_259_p2();
    void thread_sel_tmp6_fu_265_p2();
    void thread_sel_tmp7_fu_270_p2();
    void thread_sel_tmp8_fu_276_p2();
    void thread_sel_tmp9_fu_282_p2();
    void thread_sel_tmp_fu_133_p2();
    void thread_tmp53_fu_341_p2();
    void thread_tmp_11_fu_121_p2();
    void thread_tmp_12_fu_176_p3();
    void thread_tmp_13_fu_191_p2();
    void thread_tmp_15_fu_222_p2();
    void thread_tmp_17_fu_227_p2();
    void thread_tmp_1_fu_77_p2();
    void thread_tmp_1_not_fu_127_p2();
    void thread_tmp_2_fu_89_p2();
    void thread_tmp_4_fu_139_p2();
    void thread_tmp_5_fu_103_p2();
    void thread_tmp_6_fu_155_p2();
    void thread_tmp_73_cast_cast_fu_187_p1();
    void thread_tmp_73_cast_fu_183_p1();
    void thread_tmp_74_cast_fu_197_p1();
    void thread_tmp_7_fu_109_p2();
    void thread_tmp_9_fu_165_p2();
    void thread_tmp_fu_59_p3();
};

}

using namespace ap_rtl;

#endif
