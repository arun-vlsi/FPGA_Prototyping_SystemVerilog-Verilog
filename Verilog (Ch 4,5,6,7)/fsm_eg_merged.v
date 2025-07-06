`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2025 14:51:53
// Design Name: 
// Module Name: fsm_eg_merged
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


module fsm_eg_merged
   (
    input wire clk, reset, 
    input wire a, b, 
    output wire y0, y1
    );
    
    // symbolic state declaration 
    parameter [1:0]  s0 = 2'b00, 
                     s1 = 2'b01, 
                     s2 = 2'b10; 
    
    // signal declaration 
    reg [1:0] state_reg; 
    
    // state register and next-state logic 
    always @(posedge clk, posedge reset) 
      if (reset) 
         state_reg <= s0; 
      else 
         case (state_reg)
            s0 : if(a) 
                   if(b)
                     state_reg <= s2; 
                  else 
                      state_reg <= s1; 
                 else 
                   state_reg <= s0; 
              s1: if (a) 
                     state_reg <= s0;
                   else 
                      state_reg <= s1; 
              s2: state_reg <= s0; 
                default state_reg <= s0; 
             endcase
    
    // Moore output logic 
    assign y1 = (state_reg==s0) || (state_reg==s1); 
    
    // Mealy output logic 
    assign y0 = (state_reg == 0) & a & b; 
 endmodule
