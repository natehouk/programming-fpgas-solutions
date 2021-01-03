`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:57:19 01/03/2021 
// Design Name: 
// Module Name:    tone 
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

module tone(
    input CLK,
    input[31:0] period, // microseconds 
    output reg tone_out
    );

parameter CLK_F = 32; // CLK freq in MHz

reg [5:0] prescaler = 0; 
reg [31:0] counter = 0;

always @(posedge CLK)
begin
  prescaler <= prescaler + 1;
  if (prescaler == CLK_F / 2 - 1) 
  begin
    prescaler <= 0;
    counter <= counter + 1;
    if (counter == period - 1)
    begin
      counter <= 0;
      tone_out <= ~ tone_out;
    end		
  end  
end

endmodule