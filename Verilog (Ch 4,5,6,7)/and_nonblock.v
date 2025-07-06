`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2025 09:55:35
// Design Name: 
// Module Name: and_nonblock
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


module and_nonblock
   (
     input wire a, b, c, 
     output reg y
   );
   
    always @* 
    begin 
         y <= a; 
         y <= y & b; 
         y <= y & c; 
    end 
       
endmodule
