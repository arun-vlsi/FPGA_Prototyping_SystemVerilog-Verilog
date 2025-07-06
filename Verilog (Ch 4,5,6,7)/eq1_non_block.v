`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2025 10:00:22
// Design Name: 
// Module Name: eq1_non_block
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


module eq1_non_block
   (
     input wire i0, i1, 
     output reg eq
    );
    
    reg p0 , p1;
    
    always @(i0, i1, p0, p1)  // p0, p1 also in sensitivity list 
    // the order of the statements is not important
    begin 
      p0 <= ~i0 & ~i1; 
      p1 <= i0 & i1; 
      eq <= p0 | p1; 
    end 
 endmodule
