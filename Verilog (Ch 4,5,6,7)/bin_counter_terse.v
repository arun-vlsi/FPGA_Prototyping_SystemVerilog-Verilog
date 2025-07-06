`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2025 10:15:53
// Design Name: 
// Module Name: bin_counter_terse
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


module bin_counter_terse
   #( parameter N = 8)
   (
    input wire clk, reset, 
    output wire max_tick, 
    output reg [N-1:0] q
    );
    
    // body 
    always @(posedge clk, posedge reset)
      if(reset)
         q <= 0; 
       else
         q <= q + 1; 
     // output logic 
     assign max_tick = (q == 2**N - 1) ? 1'b1 : 1'b0;
    
             
endmodule
