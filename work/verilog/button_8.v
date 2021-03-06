/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module button_8 (
    input clk,
    input rst,
    input [2:0] button,
    output reg [2:0] button_pressed
  );
  
  
  
  wire [1-1:0] M_button0_cond_out;
  reg [1-1:0] M_button0_cond_in;
  button_conditioner_18 button0_cond (
    .clk(clk),
    .in(M_button0_cond_in),
    .out(M_button0_cond_out)
  );
  wire [1-1:0] M_button0_edge_out;
  reg [1-1:0] M_button0_edge_in;
  edge_detector_3 button0_edge (
    .clk(clk),
    .in(M_button0_edge_in),
    .out(M_button0_edge_out)
  );
  wire [1-1:0] M_button1_cond_out;
  reg [1-1:0] M_button1_cond_in;
  button_conditioner_18 button1_cond (
    .clk(clk),
    .in(M_button1_cond_in),
    .out(M_button1_cond_out)
  );
  wire [1-1:0] M_button1_edge_out;
  reg [1-1:0] M_button1_edge_in;
  edge_detector_3 button1_edge (
    .clk(clk),
    .in(M_button1_edge_in),
    .out(M_button1_edge_out)
  );
  wire [1-1:0] M_button2_cond_out;
  reg [1-1:0] M_button2_cond_in;
  button_conditioner_18 button2_cond (
    .clk(clk),
    .in(M_button2_cond_in),
    .out(M_button2_cond_out)
  );
  wire [1-1:0] M_button2_edge_out;
  reg [1-1:0] M_button2_edge_in;
  edge_detector_3 button2_edge (
    .clk(clk),
    .in(M_button2_edge_in),
    .out(M_button2_edge_out)
  );
  
  always @* begin
    M_button0_cond_in = button[0+0-:1];
    M_button0_edge_in = M_button0_cond_out;
    M_button1_cond_in = button[1+0-:1];
    M_button1_edge_in = M_button1_cond_out;
    M_button2_cond_in = button[2+0-:1];
    M_button2_edge_in = M_button2_cond_out;
    button_pressed[0+0-:1] = M_button0_edge_out;
    button_pressed[1+0-:1] = M_button1_edge_out;
    button_pressed[2+0-:1] = M_button2_edge_out;
  end
endmodule
