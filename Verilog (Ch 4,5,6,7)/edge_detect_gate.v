`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2025 21:33:53
// Design Name: 
// Module Name: edge_detect_gate
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


module edge_detect_gate
   (
     input wire clk, reset, 
     input wire level, 
     output wire tick
    );
    
    // signal declaration 
    reg delay_reg; 
    
    // delay register 
    always @(posedge clk, posedge reset)
      if(reset)
         delay_reg <= 1'b0; 
        else 
          delay_reg <= level; 
          
    // decoding logic 
    assign tick = ~delay_reg & level; 
    
endmodule
