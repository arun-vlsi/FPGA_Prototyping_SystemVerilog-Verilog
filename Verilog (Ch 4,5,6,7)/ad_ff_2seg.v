`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2025 10:03:27
// Design Name: 
// Module Name: ad_ff_2seg
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


module ad_ff_2seg
   (
    input wire clk, 
    input wire a, b, 
    output reg q
    );
    
     reg q_next; 
     
     // D FF 
     always @(posedge clk)
       q <= q_next; 
       
     // combinational circuit
     always @* 
        q_next = a & b; 
        
endmodule
