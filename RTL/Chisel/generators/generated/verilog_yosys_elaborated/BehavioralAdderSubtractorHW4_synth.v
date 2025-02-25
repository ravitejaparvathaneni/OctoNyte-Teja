/* Generated by Yosys 0.48+5 (git sha1 7a362f1f7, clang++ 18.1.8 -fPIC -O3) */

module BehavioralAdderSubtractor(io_a, io_b, io_subtract, io_result);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire [4:0] _GEN;
  wire [4:0] _GEN_0;
  wire _fullResult_T;
  wire [4:0] _fullResult_T_1;
  wire [3:0] _fullResult_T_2;
  wire [4:0] _fullResult_T_3;
  wire [3:0] _fullResult_T_4;
  wire [3:0] _io_result_T;
  wire [3:0] fullResult;
  input [3:0] io_a;
  wire [3:0] io_a;
  wire [3:0] io_a_0;
  input [3:0] io_b;
  wire [3:0] io_b;
  wire [3:0] io_b_0;
  output [3:0] io_result;
  wire [3:0] io_result;
  wire [3:0] io_result_0;
  input io_subtract;
  wire io_subtract;
  wire io_subtract_0;
  sky130_fd_sc_hd__nand2b_1 _13_ (
    .A_N(io_a[0]),
    .B(io_b[0]),
    .Y(_00_)
  );
  sky130_fd_sc_hd__xor2_1 _14_ (
    .A(io_a[0]),
    .B(io_b[0]),
    .X(io_result[0])
  );
  sky130_fd_sc_hd__nand2_1 _15_ (
    .A(io_b[0]),
    .B(io_b[1]),
    .Y(_01_)
  );
  sky130_fd_sc_hd__o21ba_1 _16_ (
    .A1(io_b[0]),
    .A2(io_b[1]),
    .B1_N(io_subtract),
    .X(_02_)
  );
  sky130_fd_sc_hd__a22oi_1 _17_ (
    .A1(io_b[1]),
    .A2(io_subtract),
    .B1(_01_),
    .B2(_02_),
    .Y(_03_)
  );
  sky130_fd_sc_hd__xnor2_1 _18_ (
    .A(io_a[1]),
    .B(_03_),
    .Y(_04_)
  );
  sky130_fd_sc_hd__xnor2_1 _19_ (
    .A(_00_),
    .B(_04_),
    .Y(io_result[1])
  );
  sky130_fd_sc_hd__maj3_1 _20_ (
    .A(io_a[1]),
    .B(_00_),
    .C(_03_),
    .X(_05_)
  );
  sky130_fd_sc_hd__xnor2_1 _21_ (
    .A(io_b[2]),
    .B(_02_),
    .Y(_06_)
  );
  sky130_fd_sc_hd__xnor2_1 _22_ (
    .A(io_a[2]),
    .B(_06_),
    .Y(_07_)
  );
  sky130_fd_sc_hd__xnor2_1 _23_ (
    .A(_05_),
    .B(_07_),
    .Y(io_result[2])
  );
  sky130_fd_sc_hd__maj3_1 _24_ (
    .A(io_a[2]),
    .B(_05_),
    .C(_06_),
    .X(_08_)
  );
  sky130_fd_sc_hd__nor3_1 _25_ (
    .A(io_b[0]),
    .B(io_b[1]),
    .C(io_b[2]),
    .Y(_09_)
  );
  sky130_fd_sc_hd__nor2_1 _26_ (
    .A(io_subtract),
    .B(_09_),
    .Y(_10_)
  );
  sky130_fd_sc_hd__xnor2_1 _27_ (
    .A(io_b[3]),
    .B(io_a[3]),
    .Y(_11_)
  );
  sky130_fd_sc_hd__xnor2_1 _28_ (
    .A(_10_),
    .B(_11_),
    .Y(_12_)
  );
  sky130_fd_sc_hd__xnor2_1 _29_ (
    .A(_08_),
    .B(_12_),
    .Y(io_result[3])
  );
  assign _GEN = { 1'h0, io_a };
  assign _GEN_0 = { 1'h0, io_b };
  assign _fullResult_T = io_subtract;
  assign _fullResult_T_1 = 5'hxx;
  assign _fullResult_T_2 = 4'hx;
  assign _fullResult_T_3 = 5'hxx;
  assign _fullResult_T_4 = 4'hx;
  assign _io_result_T = io_result;
  assign fullResult = io_result;
  assign io_a_0 = io_a;
  assign io_b_0 = io_b;
  assign io_result_0 = io_result;
  assign io_subtract_0 = io_subtract;
endmodule

module BehavioralAdderSubtractorHW4(clock, reset, io_a, io_b, io_subtract, io_sum);
  input clock;
  wire clock;
  input [3:0] io_a;
  wire [3:0] io_a;
  wire [3:0] io_a_0;
  input [3:0] io_b;
  wire [3:0] io_b;
  wire [3:0] io_b_0;
  input io_subtract;
  wire io_subtract;
  wire io_subtract_0;
  output [3:0] io_sum;
  wire [3:0] io_sum;
  wire [3:0] io_sum_0;
  input reset;
  wire reset;
  BehavioralAdderSubtractor io_sum_module (
    .io_a(io_a),
    .io_b(io_b),
    .io_result(io_sum_0),
    .io_subtract(io_subtract)
  );
  assign io_a_0 = io_a;
  assign io_b_0 = io_b;
  assign io_subtract_0 = io_subtract;
  assign io_sum = io_sum_0;
endmodule
