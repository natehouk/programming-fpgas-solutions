`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:24:50 01/02/2021 
// Design Name: 
// Module Name:    seg_test 
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
module seg_test(
    input CLK,
    input [3:0] D,
    output [7:0] SEG,
    output [3:0] DIGIT
    );

assign DIGIT = 4'b1110;

decoder_7_seg decoder(.CLK (CLK), .SEG (SEG), .D (D));

endmodule
