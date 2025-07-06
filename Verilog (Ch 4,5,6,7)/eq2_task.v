`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2025 23:13:32
// Design Name: 
// Module Name: eq2_task
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


module eq2_task
   (
     input wire [1:0] a, b, 
     output reg aeqb
    );
    
    reg e0, e1; 
    
    always @* 
    begin 
       equ_tsk(2, a[0], b[0], e0); 
       equ_task(2, a[1], b[1], e1); 
       aeqb = e0 & e1; 
     end 
     
     // task definition 
    task equ_task
    ( 
      input integer delay, 
      input i0, i1, 
      output eq1
     );
     begin 
       # delay eq1 = (~i0 & ~i1) | (i0 & i1);
     end 
   endtask
   
 endmodule
