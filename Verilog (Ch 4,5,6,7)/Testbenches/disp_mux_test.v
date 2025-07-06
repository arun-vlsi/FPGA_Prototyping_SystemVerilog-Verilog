`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2025 01:00:16
// Design Name: 
// Module Name: disp_mux_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module disp_mux_test
( 
  input wire clk, 
  input wire [3:0] btn,
  input wire [7:0] sw,
  output wire [3:0] an, 
  output wire [7:0] sseg
 );
 
 // signal declaration 
 reg [7:0] d3_reg, d2_reg, d1_reg, d0_reg;
 
 // instatntiate 7-seg LED display time-multiplexing module 
 disp_mux disp_unit 
 (.clk(clk), .reset(1'b0), .in0(d0_reg), .in1(dl_reg), 
 .in2(d2_reg), .in3(d3_reg), .an(an), .sseg(sseg));
 
 // registers for 4 led patterns
 always @(posedge clk)
 begin 
  if (btn[3])
    d3_reg <= sw; 
  if (btn[2])
    d2_reg <= sw; 
  if (btn[1])
    d1_reg <= sw; 
  if (btn[0])
    d0_reg <= sw; 
  end 
 
endmodule
