/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu4_1 (
    input [3:0] a,
    input [3:0] b,
    input [5:0] alufn,
    output reg [3:0] out,
    output reg z,
    output reg v,
    output reg n,
    output reg [3:0] aOut
  );
  
  
  
  wire [4-1:0] M_add_out;
  reg [4-1:0] M_add_a;
  reg [4-1:0] M_add_b;
  reg [6-1:0] M_add_alufn;
  adder4_9 add (
    .a(M_add_a),
    .b(M_add_b),
    .alufn(M_add_alufn),
    .out(M_add_out)
  );
  
  wire [32-1:0] M_cmp_out;
  reg [6-1:0] M_cmp_alufn;
  reg [1-1:0] M_cmp_z;
  reg [1-1:0] M_cmp_v;
  reg [1-1:0] M_cmp_n;
  compare4_10 cmp (
    .alufn(M_cmp_alufn),
    .z(M_cmp_z),
    .v(M_cmp_v),
    .n(M_cmp_n),
    .out(M_cmp_out)
  );
  
  wire [4-1:0] M_shift_out;
  reg [4-1:0] M_shift_a;
  reg [4-1:0] M_shift_b;
  reg [6-1:0] M_shift_alufn;
  shift4_11 shift (
    .a(M_shift_a),
    .b(M_shift_b),
    .alufn(M_shift_alufn),
    .out(M_shift_out)
  );
  
  wire [4-1:0] M_bool_out;
  reg [4-1:0] M_bool_a;
  reg [4-1:0] M_bool_b;
  reg [6-1:0] M_bool_alufn;
  boole4_12 bool (
    .a(M_bool_a),
    .b(M_bool_b),
    .alufn(M_bool_alufn),
    .out(M_bool_out)
  );
  
  wire [1-1:0] M_zvn_z;
  wire [1-1:0] M_zvn_v;
  wire [1-1:0] M_zvn_n;
  reg [4-1:0] M_zvn_a;
  reg [4-1:0] M_zvn_b;
  reg [4-1:0] M_zvn_addOut;
  reg [6-1:0] M_zvn_alufn;
  zvn_13 zvn (
    .a(M_zvn_a),
    .b(M_zvn_b),
    .addOut(M_zvn_addOut),
    .alufn(M_zvn_alufn),
    .z(M_zvn_z),
    .v(M_zvn_v),
    .n(M_zvn_n)
  );
  
  always @* begin
    M_bool_a = a;
    M_bool_b = b;
    M_bool_alufn = alufn;
    M_add_a = a;
    M_add_b = b;
    M_add_alufn = alufn;
    M_zvn_a = a;
    M_zvn_b = b;
    M_zvn_alufn = alufn;
    M_zvn_addOut = M_add_out;
    z = M_zvn_z;
    v = M_zvn_v;
    n = M_zvn_n;
    aOut = M_add_out;
    M_cmp_z = M_zvn_z;
    M_cmp_v = M_zvn_v;
    M_cmp_n = M_zvn_n;
    M_cmp_alufn = alufn;
    M_shift_a = a;
    M_shift_b = b;
    M_shift_alufn = alufn;
    
    case (alufn[4+1-:2])
      2'h0: begin
        out = M_add_out;
      end
      2'h1: begin
        out = M_bool_out;
      end
      2'h2: begin
        out = M_shift_out;
      end
      2'h3: begin
        out = M_cmp_out;
      end
      default: begin
        out = 8'hff;
      end
    endcase
  end
endmodule
