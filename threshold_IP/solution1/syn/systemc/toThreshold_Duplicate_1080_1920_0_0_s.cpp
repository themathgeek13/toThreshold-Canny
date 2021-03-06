// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "toThreshold_Duplicate_1080_1920_0_0_s.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic toThreshold_Duplicate_1080_1920_0_0_s::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic toThreshold_Duplicate_1080_1920_0_0_s::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> toThreshold_Duplicate_1080_1920_0_0_s::ap_ST_st1_fsm_0 = "1";
const sc_lv<4> toThreshold_Duplicate_1080_1920_0_0_s::ap_ST_st2_fsm_1 = "10";
const sc_lv<4> toThreshold_Duplicate_1080_1920_0_0_s::ap_ST_pp0_stg0_fsm_2 = "100";
const sc_lv<4> toThreshold_Duplicate_1080_1920_0_0_s::ap_ST_st5_fsm_3 = "1000";
const sc_lv<32> toThreshold_Duplicate_1080_1920_0_0_s::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> toThreshold_Duplicate_1080_1920_0_0_s::ap_const_lv1_1 = "1";
const sc_lv<32> toThreshold_Duplicate_1080_1920_0_0_s::ap_const_lv32_1 = "1";
const sc_lv<32> toThreshold_Duplicate_1080_1920_0_0_s::ap_const_lv32_2 = "10";
const sc_lv<1> toThreshold_Duplicate_1080_1920_0_0_s::ap_const_lv1_0 = "0";
const sc_lv<32> toThreshold_Duplicate_1080_1920_0_0_s::ap_const_lv32_3 = "11";
const sc_lv<11> toThreshold_Duplicate_1080_1920_0_0_s::ap_const_lv11_0 = "00000000000";
const sc_lv<11> toThreshold_Duplicate_1080_1920_0_0_s::ap_const_lv11_1 = "1";

toThreshold_Duplicate_1080_1920_0_0_s::toThreshold_Duplicate_1080_1920_0_0_s(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( exitcond4_fu_159_p2 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( exitcond4_fu_159_p2 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_ap_sig_bdd_116);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_23);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_55);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_sig_bdd_67);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_78);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_92);
    sensitive << ( src_data_stream_V_empty_n );
    sensitive << ( dst1_data_stream_V_full_n );
    sensitive << ( dst2_data_stream_V_full_n );
    sensitive << ( exitcond_reg_204 );

    SC_METHOD(thread_ap_sig_cseq_ST_pp0_stg0_fsm_2);
    sensitive << ( ap_sig_bdd_78 );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_bdd_23 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_bdd_67 );

    SC_METHOD(thread_ap_sig_cseq_ST_st5_fsm_3);
    sensitive << ( ap_sig_bdd_116 );

    SC_METHOD(thread_dst1_data_stream_V_din);
    sensitive << ( src_data_stream_V_dout );
    sensitive << ( exitcond_reg_204 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_92 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_dst1_data_stream_V_write);
    sensitive << ( exitcond_reg_204 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_92 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_dst2_data_stream_V_din);
    sensitive << ( src_data_stream_V_dout );
    sensitive << ( exitcond_reg_204 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_92 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_dst2_data_stream_V_write);
    sensitive << ( exitcond_reg_204 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_92 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_exitcond4_fu_159_p2);
    sensitive << ( dst2_rows_V_read );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( p_cast_fu_155_p1 );

    SC_METHOD(thread_exitcond_fu_174_p2);
    sensitive << ( dst2_cols_V_read );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( ap_sig_bdd_92 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( p_4_cast_fu_170_p1 );

    SC_METHOD(thread_i_V_fu_164_p2);
    sensitive << ( p_s_reg_132 );

    SC_METHOD(thread_j_V_fu_179_p2);
    sensitive << ( p_4_reg_143 );

    SC_METHOD(thread_p_4_cast_fu_170_p1);
    sensitive << ( p_4_reg_143 );

    SC_METHOD(thread_p_cast_fu_155_p1);
    sensitive << ( p_s_reg_132 );

    SC_METHOD(thread_src_data_stream_V_read);
    sensitive << ( exitcond_reg_204 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_92 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_55 );
    sensitive << ( exitcond4_fu_159_p2 );
    sensitive << ( exitcond_fu_174_p2 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( ap_sig_bdd_92 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "0001";
    ap_reg_ppiten_pp0_it0 = SC_LOGIC_0;
    ap_reg_ppiten_pp0_it1 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "toThreshold_Duplicate_1080_1920_0_0_s_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, src_rows_V_read, "(port)src_rows_V_read");
    sc_trace(mVcdFile, src_cols_V_read, "(port)src_cols_V_read");
    sc_trace(mVcdFile, src_data_stream_V_dout, "(port)src_data_stream_V_dout");
    sc_trace(mVcdFile, src_data_stream_V_empty_n, "(port)src_data_stream_V_empty_n");
    sc_trace(mVcdFile, src_data_stream_V_read, "(port)src_data_stream_V_read");
    sc_trace(mVcdFile, dst1_rows_V_read, "(port)dst1_rows_V_read");
    sc_trace(mVcdFile, dst1_cols_V_read, "(port)dst1_cols_V_read");
    sc_trace(mVcdFile, dst1_data_stream_V_din, "(port)dst1_data_stream_V_din");
    sc_trace(mVcdFile, dst1_data_stream_V_full_n, "(port)dst1_data_stream_V_full_n");
    sc_trace(mVcdFile, dst1_data_stream_V_write, "(port)dst1_data_stream_V_write");
    sc_trace(mVcdFile, dst2_rows_V_read, "(port)dst2_rows_V_read");
    sc_trace(mVcdFile, dst2_cols_V_read, "(port)dst2_cols_V_read");
    sc_trace(mVcdFile, dst2_data_stream_V_din, "(port)dst2_data_stream_V_din");
    sc_trace(mVcdFile, dst2_data_stream_V_full_n, "(port)dst2_data_stream_V_full_n");
    sc_trace(mVcdFile, dst2_data_stream_V_write, "(port)dst2_data_stream_V_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_bdd_23, "ap_sig_bdd_23");
    sc_trace(mVcdFile, p_4_reg_143, "p_4_reg_143");
    sc_trace(mVcdFile, ap_sig_bdd_55, "ap_sig_bdd_55");
    sc_trace(mVcdFile, exitcond4_fu_159_p2, "exitcond4_fu_159_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_bdd_67, "ap_sig_bdd_67");
    sc_trace(mVcdFile, i_V_fu_164_p2, "i_V_fu_164_p2");
    sc_trace(mVcdFile, i_V_reg_199, "i_V_reg_199");
    sc_trace(mVcdFile, exitcond_fu_174_p2, "exitcond_fu_174_p2");
    sc_trace(mVcdFile, exitcond_reg_204, "exitcond_reg_204");
    sc_trace(mVcdFile, ap_sig_cseq_ST_pp0_stg0_fsm_2, "ap_sig_cseq_ST_pp0_stg0_fsm_2");
    sc_trace(mVcdFile, ap_sig_bdd_78, "ap_sig_bdd_78");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it0, "ap_reg_ppiten_pp0_it0");
    sc_trace(mVcdFile, ap_sig_bdd_92, "ap_sig_bdd_92");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it1, "ap_reg_ppiten_pp0_it1");
    sc_trace(mVcdFile, j_V_fu_179_p2, "j_V_fu_179_p2");
    sc_trace(mVcdFile, p_s_reg_132, "p_s_reg_132");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st5_fsm_3, "ap_sig_cseq_ST_st5_fsm_3");
    sc_trace(mVcdFile, ap_sig_bdd_116, "ap_sig_bdd_116");
    sc_trace(mVcdFile, p_cast_fu_155_p1, "p_cast_fu_155_p1");
    sc_trace(mVcdFile, p_4_cast_fu_170_p1, "p_4_cast_fu_170_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

toThreshold_Duplicate_1080_1920_0_0_s::~toThreshold_Duplicate_1080_1920_0_0_s() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
                    !esl_seteq<1,1,1>(exitcond4_fu_159_p2.read(), ap_const_lv1_0))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
             !(ap_sig_bdd_92.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
             !esl_seteq<1,1,1>(exitcond_fu_174_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
                    esl_seteq<1,1,1>(exitcond4_fu_159_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
             !(ap_sig_bdd_92.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
             esl_seteq<1,1,1>(exitcond_fu_174_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_1;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
                     esl_seteq<1,1,1>(exitcond4_fu_159_p2.read(), ap_const_lv1_0)) || 
                    (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
                     !(ap_sig_bdd_92.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
                     !esl_seteq<1,1,1>(exitcond_fu_174_p2.read(), ap_const_lv1_0)))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
         !(ap_sig_bdd_92.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
         esl_seteq<1,1,1>(exitcond_fu_174_p2.read(), ap_const_lv1_0))) {
        p_4_reg_143 = j_V_fu_179_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
                esl_seteq<1,1,1>(exitcond4_fu_159_p2.read(), ap_const_lv1_0))) {
        p_4_reg_143 = ap_const_lv11_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !ap_sig_bdd_55.read())) {
        p_s_reg_132 = ap_const_lv11_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_3.read())) {
        p_s_reg_132 = i_V_reg_199.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && !(ap_sig_bdd_92.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        exitcond_reg_204 = exitcond_fu_174_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        i_V_reg_199 = i_V_fu_164_p2.read();
    }
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_done_reg.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
          !esl_seteq<1,1,1>(exitcond4_fu_159_p2.read(), ap_const_lv1_0)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(exitcond4_fu_159_p2.read(), ap_const_lv1_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_ap_sig_bdd_116() {
    ap_sig_bdd_116 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_ap_sig_bdd_23() {
    ap_sig_bdd_23 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_ap_sig_bdd_55() {
    ap_sig_bdd_55 = (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_ap_sig_bdd_67() {
    ap_sig_bdd_67 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_ap_sig_bdd_78() {
    ap_sig_bdd_78 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_ap_sig_bdd_92() {
    ap_sig_bdd_92 = ((esl_seteq<1,1,1>(src_data_stream_V_empty_n.read(), ap_const_logic_0) && 
  esl_seteq<1,1,1>(exitcond_reg_204.read(), ap_const_lv1_0)) || (esl_seteq<1,1,1>(exitcond_reg_204.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(dst1_data_stream_V_full_n.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(exitcond_reg_204.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(dst2_data_stream_V_full_n.read(), ap_const_logic_0)));
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_ap_sig_cseq_ST_pp0_stg0_fsm_2() {
    if (ap_sig_bdd_78.read()) {
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_0;
    }
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_bdd_23.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_bdd_67.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_ap_sig_cseq_ST_st5_fsm_3() {
    if (ap_sig_bdd_116.read()) {
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_0;
    }
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_dst1_data_stream_V_din() {
    dst1_data_stream_V_din = src_data_stream_V_dout.read();
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_dst1_data_stream_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond_reg_204.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_92.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        dst1_data_stream_V_write = ap_const_logic_1;
    } else {
        dst1_data_stream_V_write = ap_const_logic_0;
    }
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_dst2_data_stream_V_din() {
    dst2_data_stream_V_din = src_data_stream_V_dout.read();
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_dst2_data_stream_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond_reg_204.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_92.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        dst2_data_stream_V_write = ap_const_logic_1;
    } else {
        dst2_data_stream_V_write = ap_const_logic_0;
    }
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_exitcond4_fu_159_p2() {
    exitcond4_fu_159_p2 = (!p_cast_fu_155_p1.read().is_01() || !dst2_rows_V_read.read().is_01())? sc_lv<1>(): sc_lv<1>(p_cast_fu_155_p1.read() == dst2_rows_V_read.read());
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_exitcond_fu_174_p2() {
    exitcond_fu_174_p2 = (!p_4_cast_fu_170_p1.read().is_01() || !dst2_cols_V_read.read().is_01())? sc_lv<1>(): sc_lv<1>(p_4_cast_fu_170_p1.read() == dst2_cols_V_read.read());
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_i_V_fu_164_p2() {
    i_V_fu_164_p2 = (!p_s_reg_132.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(p_s_reg_132.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_j_V_fu_179_p2() {
    j_V_fu_179_p2 = (!p_4_reg_143.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(p_4_reg_143.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_p_4_cast_fu_170_p1() {
    p_4_cast_fu_170_p1 = esl_zext<12,11>(p_4_reg_143.read());
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_p_cast_fu_155_p1() {
    p_cast_fu_155_p1 = esl_zext<12,11>(p_s_reg_132.read());
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_src_data_stream_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond_reg_204.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_92.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        src_data_stream_V_read = ap_const_logic_1;
    } else {
        src_data_stream_V_read = ap_const_logic_0;
    }
}

void toThreshold_Duplicate_1080_1920_0_0_s::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!ap_sig_bdd_55.read()) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(exitcond4_fu_159_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            }
            break;
        case 4 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !(ap_sig_bdd_92.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && !esl_seteq<1,1,1>(exitcond_fu_174_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !(ap_sig_bdd_92.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && !esl_seteq<1,1,1>(exitcond_fu_174_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_st5_fsm_3;
            } else {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_st2_fsm_1;
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

}

