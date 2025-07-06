`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2025 10:05:25
// Design Name: 
// Module Name: ab_ff_all
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


module ab_ff_all
   (
    input wire clk, 
    input wire a, b, 
    output reg q0, q1, q2, q3, q4, q5
    );
    
    reg ab0, ab1, ab2, ab3, ab4, ab5; 
    
    // attempt 0
    always @(posedge clk)
    begin 
      ab0 = a & b; 
      q0 <= ab0; 
    end 
    
    // attempt 1
    always @(posedge clk)
    begin 
      ab1 <= a & b; 
      q1 <= ab1; 
    end 
    
    // attempt 2 
    always @(posedge clk) 
    begin 
      ab2 = a & b; 
      q2 = ab2; 
    end 
    
    // attempt 3 (switch the order of attempt 0)
    always @(posedge clk)
    begin 
     q3 <= ab3; 
     ab3 = a & b; 
    end 
    
    // attempt 4 (switch the order of attempt 1) 
    always @(posedge clk)  
    begin 
       q4 <= ab4; 
       ab4 <= a & b; 
    end 
    
    // attempt 5 (switch the order of attempt 2) 
    always @(posedge clk) 
    begin 
       q5 = ab5; 
       ab5 = a & b; 
    end 
endmodule
