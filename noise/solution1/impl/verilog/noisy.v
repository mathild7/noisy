// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="noisy,hls_ip_2017_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z100ffg900-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.256000,HLS_SYN_LAT=32,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=5,HLS_SYN_FF=894,HLS_SYN_LUT=1478}" *)

module noisy (
        ap_clk,
        ap_rst_n,
        out_V_TDATA,
        out_V_TVALID,
        out_V_TREADY
);

parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;

input   ap_clk;
input   ap_rst_n;
output  [31:0] out_V_TDATA;
output   out_V_TVALID;
input   out_V_TREADY;

reg    ap_rst_n_inv;
reg   [31:0] out_V_1_data_out;
reg    out_V_1_vld_in;
wire    out_V_1_vld_out;
wire    out_V_1_ack_in;
wire    out_V_1_ack_out;
reg   [31:0] out_V_1_payload_A;
reg   [31:0] out_V_1_payload_B;
reg    out_V_1_sel_rd;
reg    out_V_1_sel_wr;
wire    out_V_1_sel;
wire    out_V_1_load_A;
wire    out_V_1_load_B;
reg   [1:0] out_V_1_state;
wire    out_V_1_state_cmp_full;
reg   [31:0] state;
reg    out_V_TDATA_blk_n;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire   [4:0] i_1_fu_89_p2;
wire    ap_CS_fsm_state2;
wire   [0:0] exitcond_fu_83_p2;
wire   [31:0] grp_fu_75_p1;
reg   [31:0] tmp_reg_142;
wire    ap_CS_fsm_state7;
wire   [31:0] grp_fu_64_p2;
reg   [31:0] tmp_1_reg_147;
wire    ap_CS_fsm_state12;
wire   [31:0] grp_fu_69_p2;
reg   [4:0] i_reg_53;
wire    ap_CS_fsm_state1;
wire   [31:0] storemerge_fu_115_p3;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
wire   [31:0] tmp_3_fu_95_p2;
wire   [0:0] tmp_4_fu_101_p3;
wire   [31:0] tmp_7_fu_109_p2;
reg    grp_fu_69_ce;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
reg   [16:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 out_V_1_sel_rd = 1'b0;
#0 out_V_1_sel_wr = 1'b0;
#0 out_V_1_state = 2'd0;
#0 state = 32'd1;
#0 ap_CS_fsm = 17'd1;
end

noisy_fadd_32ns_3bkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
noisy_fadd_32ns_3bkb_U1(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(tmp_reg_142),
    .din1(32'd3338665984),
    .ce(1'b1),
    .dout(grp_fu_64_p2)
);

noisy_fmul_32ns_3cud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
noisy_fmul_32ns_3cud_U2(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(tmp_1_reg_147),
    .din1(32'd939524096),
    .ce(grp_fu_69_ce),
    .dout(grp_fu_69_p2)
);

noisy_uitofp_32nsdEe #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
noisy_uitofp_32nsdEe_U3(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(state),
    .ce(1'b1),
    .dout(grp_fu_75_p1)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        out_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == out_V_1_ack_out) & (1'b1 == out_V_1_vld_out))) begin
            out_V_1_sel_rd <= ~out_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        out_V_1_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == out_V_1_vld_in) & (1'b1 == out_V_1_ack_in))) begin
            out_V_1_sel_wr <= ~out_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        out_V_1_state <= 2'd0;
    end else begin
        if ((((1'b0 == out_V_1_vld_in) & (1'b1 == out_V_1_ack_out) & (out_V_1_state == 2'd3)) | ((1'b0 == out_V_1_vld_in) & (out_V_1_state == 2'd2)))) begin
            out_V_1_state <= 2'd2;
        end else if ((((1'b1 == out_V_1_vld_in) & (1'b0 == out_V_1_ack_out) & (out_V_1_state == 2'd3)) | ((1'b0 == out_V_1_ack_out) & (out_V_1_state == 2'd1)))) begin
            out_V_1_state <= 2'd1;
        end else if ((((1'b1 == out_V_1_vld_in) & (out_V_1_state == 2'd2)) | ((1'b1 == out_V_1_ack_out) & (out_V_1_state == 2'd1)) | ((out_V_1_state == 2'd3) & ~((1'b1 == out_V_1_vld_in) & (1'b0 == out_V_1_ack_out)) & ~((1'b0 == out_V_1_vld_in) & (1'b1 == out_V_1_ack_out))))) begin
            out_V_1_state <= 2'd3;
        end else begin
            out_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'd0 == exitcond_fu_83_p2))) begin
        i_reg_53 <= i_1_fu_89_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        i_reg_53 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == out_V_1_load_A)) begin
        out_V_1_payload_A <= grp_fu_69_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == out_V_1_load_B)) begin
        out_V_1_payload_B <= grp_fu_69_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'd0 == exitcond_fu_83_p2))) begin
        state <= storemerge_fu_115_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp_1_reg_147 <= grp_fu_64_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_reg_142 <= grp_fu_75_p1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state16) & (out_V_1_ack_in == 1'b1)) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state15))) begin
        grp_fu_69_ce = 1'b1;
    end else begin
        grp_fu_69_ce = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == out_V_1_sel)) begin
        out_V_1_data_out = out_V_1_payload_B;
    end else begin
        out_V_1_data_out = out_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) & (out_V_1_ack_in == 1'b1))) begin
        out_V_1_vld_in = 1'b1;
    end else begin
        out_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state17))) begin
        out_V_TDATA_blk_n = out_V_1_state[1'd1];
    end else begin
        out_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (1'd0 == exitcond_fu_83_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
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
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((1'b1 == ap_CS_fsm_state16) & (out_V_1_ack_in == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state17 : begin
            if (((1'b1 == ap_CS_fsm_state17) & (out_V_1_ack_in == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign exitcond_fu_83_p2 = ((i_reg_53 == 5'd16) ? 1'b1 : 1'b0);

assign i_1_fu_89_p2 = (i_reg_53 + 5'd1);

assign out_V_1_ack_in = out_V_1_state[1'd1];

assign out_V_1_ack_out = out_V_TREADY;

assign out_V_1_load_A = (out_V_1_state_cmp_full & ~out_V_1_sel_wr);

assign out_V_1_load_B = (out_V_1_sel_wr & out_V_1_state_cmp_full);

assign out_V_1_sel = out_V_1_sel_rd;

assign out_V_1_state_cmp_full = ((out_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign out_V_1_vld_out = out_V_1_state[1'd0];

assign out_V_TDATA = out_V_1_data_out;

assign out_V_TVALID = out_V_1_state[1'd0];

assign storemerge_fu_115_p3 = ((tmp_4_fu_101_p3[0:0] === 1'b1) ? tmp_7_fu_109_p2 : tmp_3_fu_95_p2);

assign tmp_3_fu_95_p2 = state << 32'd1;

assign tmp_4_fu_101_p3 = state[32'd15];

assign tmp_7_fu_109_p2 = (tmp_3_fu_95_p2 ^ 32'd69643);

endmodule //noisy
