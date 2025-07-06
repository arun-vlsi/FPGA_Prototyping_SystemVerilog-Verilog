`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2025 01:56:20
// Design Name: 
// Module Name: hex_mux_test
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


module hex_mux_test
(
 input wire clk, 
 input wire [7:0] sw, 
 output wire [3:0] an,
 output wire [7:0] sseg
 );
 
 // signal declaration 
 wire [3:0] a, b; 
 wire [7:0] sum; 
 
 // instantiate 7-seg LED display module 
 disp_hex_mux disp_unit 
   (.clk(clk), .reset(1'b0), .hex3(sum[7:4]), .hex2(sum[3:0]), .hex1(b), .hex0(a), 
    .dp_in(4'b1011), .an(an), .sseg(sseg));
    
    // adder
    assign a = sw[3:0];
    assign b = sw[7:4]; 
    assign sum = {4'b0,a} + {4'b0,b};
    
endmodule
