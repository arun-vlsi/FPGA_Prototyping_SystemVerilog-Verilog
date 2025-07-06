`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2025 20:43:56
// Design Name: 
// Module Name: log_file
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


integer log_file, both_file;
localparam con_file = 16'h0000_0001;   // console

initial
begin 
     log_file = $fopen("my_log");
     if (log_file == 0)
        $display("Fail to open log file"); // write console 
     both_file = log_fle | con_file; 
     
     // write to both console and log file 
     $fdisplay(both_file, "Simulation started"); 
     . . . 
     // write to log file only 
     $fdisplay(log_file, ...); 
     . . .
     // write to both console and log file 
     $fdisplay (both_file, "Simulation ended");
     $fclose(log_file);
  end

endmodule
