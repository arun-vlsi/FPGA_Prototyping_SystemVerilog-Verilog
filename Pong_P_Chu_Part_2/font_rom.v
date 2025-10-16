`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2025 15:30:49
// Design Name: 
// Module Name: font_rom
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


module font_rom
(
input wire clk,
input wire [10:0] addr,
output reg [7:0] data
);

// signal declaration 
reg [10:0] addr_reg;

// body 
always @(posedge clk)
  addr_reg <= addr;
 
always @* 
    case (addr_reg)

        //code x00 blank
        11'h000: data = 8'b00000000; //
        11'h001: data = 8'b00000000; //
        11'h002: data = 8'b00000000; //
        11'h003: data = 8'b00000000; //
        11'h004: data = 8'b00000000; //
        11'h005: data = 8'b00000000; //
        11'h006: data = 8'b00000000; //
        11'h007: data = 8'b00000000; //
        11'h008: data = 8'b00000000; //
        11'h009: data = 8'b00000000; //
        11'h00a: data = 8'b00000000; //
        11'h00b: data = 8'b00000000; //
        11'h00c: data = 8'b00000000; //
        11'h00d: data = 8'b00000000; //
        11'h00e: data = 8'b00000000; //
        11'h00f: data = 8'b00000000; //

        //code x01 smiley face
        11'h010: data = 8'b00000000; //
        11'h011: data = 8'b00000000; //
        11'h012: data = 8'b01111110; // ******
        11'h013: data = 8'b10000001; // *    *
        11'h014: data = 8'b10101001; // * * * *
        11'h015: data = 8'b10000001; // *    *
        11'h016: data = 8'b10000001; // *    *
        11'h017: data = 8'b10111101; // * **** *
        11'h018: data = 8'b10011001; // * **  *
        11'h019: data = 8'b10000001; // *    *
        11'h01a: data = 8'b10000001; // *    *
        11'h01b: data = 8'b01111110; // ******
        11'h01c: data = 8'b00000000; //
        11'h01d: data = 8'b00000000; //
        11'h01e: data = 8'b00000000; //
        11'h01f: data = 8'b00000000; //

        //code x7f
        11'h7f0: data = 8'b00000000; //
        11'h7f1: data = 8'b00000000; //
        11'h7f2: data = 8'b00000000; //
        11'h7f3: data = 8'b00000000; //
        11'h7f4: data = 8'b00010000; //    *
        11'h7f5: data = 8'b00111000; //   ***
        11'h7f6: data = 8'b01101100; //  ** **
        11'h7f7: data = 8'b11000110; // **   **
        11'h7f8: data = 8'b11000110; // **   **
        11'h7f9: data = 8'b11000110; // **   **
        11'h7fa: data = 8'b11111110; // *******
        11'h7fb: data = 8'b00000000; //
        11'h7fc: data = 8'b00000000; //
        11'h7fd: data = 8'b00000000; //
        11'h7fe: data = 8'b00000000; //
        11'h7ff: data = 8'b00000000; //

    endcase
endmodule

