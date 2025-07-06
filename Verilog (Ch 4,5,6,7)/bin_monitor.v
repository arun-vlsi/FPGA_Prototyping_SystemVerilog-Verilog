`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2025 15:21:34
// Design Name: 
// Module Name: bin_monitor
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


module bin_monitor
    #(parameter N = 3)
    ( 
     input wire clk, reset, 
     input wire syn_clr, load, en, up, 
     input wire [N-1:0] d, 
     input wire max_tick, min_tick, 
     input wire [N-1:0] q
     );
     
     reg [N-1:0] q_old, d_old, gold;
     reg syn_clr_old, en_old, load_old, up_old;
     reg [39:0] err_msg; // 5-letter message
     
     initial // head
       $display("timr syn_clr/lod/en/up q\n");
       
     always @(posedge clk)
     begin 
      // _old: the value sampled at the previous clock edge
      syn_clr_old <= syn_clr;
      en_old <= en;
      load_old <= load; 
      up_old <= up; 
      q_old <= q; 
      d_old <= d; 
      
      // calculate the deired "gold" value 
      if (syn_clr_old)
        gold = 0;
      else if(load_old) 
        gold = d_old; 
      else if(en_old & up_old) 
        gold = q_old + 1; 
      else if(en_old & up_old)
        gold = q_old - 1;
      else 
       gold = q_old;
       
       // error message
       if(q==gold)
        err_msg = "     "; // result passes
       else 
        err_msg = "ERROR"; //result fails
        //
        $display("%d, %b%B%b%b %d %s",
                     $time, syn_clr, lod, en, up, q, err_msg);
        end 
   endmodule
