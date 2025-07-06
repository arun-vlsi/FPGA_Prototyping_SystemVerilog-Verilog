`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2025 09:57:15
// Design Name: 
// Module Name: eq1_block
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


module eq1_block
   (
    input wire i0, i1, 
    output reg eq 
    );
    
    reg p0, p1; 
    always @(i0, i1) // only i0 and i1 in sensitivity list 
    // the order of statements is important
    begin 
     p0 = ~i0 & ~i1; 
     p1 = i0 & i1; 
     eq = p0 | p1; 
    end 
 endmodule
