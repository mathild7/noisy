// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _noisy_HH_
#define _noisy_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "noisy_fadd_32ns_3bkb.h"
#include "noisy_fmul_32ns_3cud.h"
#include "noisy_uitofp_32nsdEe.h"

namespace ap_rtl {

struct noisy : public sc_module {
    // Port declarations 5
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_out< sc_lv<32> > out_V_TDATA;
    sc_out< sc_logic > out_V_TVALID;
    sc_in< sc_logic > out_V_TREADY;
    sc_signal< sc_logic > ap_var_for_const1;
    sc_signal< sc_lv<32> > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const2;


    // Module declarations
    noisy(sc_module_name name);
    SC_HAS_PROCESS(noisy);

    ~noisy();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    noisy_fadd_32ns_3bkb<1,5,32,32,32>* noisy_fadd_32ns_3bkb_U1;
    noisy_fmul_32ns_3cud<1,4,32,32,32>* noisy_fmul_32ns_3cud_U2;
    noisy_uitofp_32nsdEe<1,6,32,32>* noisy_uitofp_32nsdEe_U3;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<32> > out_V_1_data_out;
    sc_signal< sc_logic > out_V_1_vld_in;
    sc_signal< sc_logic > out_V_1_vld_out;
    sc_signal< sc_logic > out_V_1_ack_in;
    sc_signal< sc_logic > out_V_1_ack_out;
    sc_signal< sc_lv<32> > out_V_1_payload_A;
    sc_signal< sc_lv<32> > out_V_1_payload_B;
    sc_signal< sc_logic > out_V_1_sel_rd;
    sc_signal< sc_logic > out_V_1_sel_wr;
    sc_signal< sc_logic > out_V_1_sel;
    sc_signal< sc_logic > out_V_1_load_A;
    sc_signal< sc_logic > out_V_1_load_B;
    sc_signal< sc_lv<2> > out_V_1_state;
    sc_signal< sc_logic > out_V_1_state_cmp_full;
    sc_signal< sc_lv<32> > state;
    sc_signal< sc_logic > out_V_TDATA_blk_n;
    sc_signal< sc_lv<17> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<5> > i_1_fu_89_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > exitcond_fu_83_p2;
    sc_signal< sc_lv<32> > grp_fu_75_p1;
    sc_signal< sc_lv<32> > tmp_reg_142;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > grp_fu_64_p2;
    sc_signal< sc_lv<32> > tmp_1_reg_147;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<32> > grp_fu_69_p2;
    sc_signal< sc_lv<5> > i_reg_53;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > storemerge_fu_115_p3;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<32> > tmp_3_fu_95_p2;
    sc_signal< sc_lv<1> > tmp_4_fu_101_p3;
    sc_signal< sc_lv<32> > tmp_7_fu_109_p2;
    sc_signal< sc_logic > grp_fu_69_ce;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<17> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<17> ap_ST_fsm_state1;
    static const sc_lv<17> ap_ST_fsm_state2;
    static const sc_lv<17> ap_ST_fsm_state3;
    static const sc_lv<17> ap_ST_fsm_state4;
    static const sc_lv<17> ap_ST_fsm_state5;
    static const sc_lv<17> ap_ST_fsm_state6;
    static const sc_lv<17> ap_ST_fsm_state7;
    static const sc_lv<17> ap_ST_fsm_state8;
    static const sc_lv<17> ap_ST_fsm_state9;
    static const sc_lv<17> ap_ST_fsm_state10;
    static const sc_lv<17> ap_ST_fsm_state11;
    static const sc_lv<17> ap_ST_fsm_state12;
    static const sc_lv<17> ap_ST_fsm_state13;
    static const sc_lv<17> ap_ST_fsm_state14;
    static const sc_lv<17> ap_ST_fsm_state15;
    static const sc_lv<17> ap_ST_fsm_state16;
    static const sc_lv<17> ap_ST_fsm_state17;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_C7000000;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_38000000;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<32> ap_const_lv32_1100B;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const2();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_rst_n_inv();
    void thread_exitcond_fu_83_p2();
    void thread_grp_fu_69_ce();
    void thread_i_1_fu_89_p2();
    void thread_out_V_1_ack_in();
    void thread_out_V_1_ack_out();
    void thread_out_V_1_data_out();
    void thread_out_V_1_load_A();
    void thread_out_V_1_load_B();
    void thread_out_V_1_sel();
    void thread_out_V_1_state_cmp_full();
    void thread_out_V_1_vld_in();
    void thread_out_V_1_vld_out();
    void thread_out_V_TDATA();
    void thread_out_V_TDATA_blk_n();
    void thread_out_V_TVALID();
    void thread_storemerge_fu_115_p3();
    void thread_tmp_3_fu_95_p2();
    void thread_tmp_4_fu_101_p3();
    void thread_tmp_7_fu_109_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
