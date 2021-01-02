`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:32 01/02/2021 
// Design Name: 
// Module Name:    vga_basic 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module vga_basic(
    input CLK,
    output HS,
    output VS,
    output [2:0] RED,
    output [2:0] GREEN,
    output [1:0] BLUE
    );

wire [9:0] x, y;

vga v(.CLK (CLK), .HS (HS), .VS (VS), .x (x), .y (y));

assign RED = ((x > 0) & (x < 300) & (y > 0) & (y < 300))?7:0;
assign GREEN = ((x > 200) & (x < 400) & (y > 150) & (y < 350)?7:0);
assign BLUE = ((x > 300) & (x < 600) & (y > 180) & (y < 480))?3:0;

endmodule