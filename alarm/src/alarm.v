`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:48:31 01/03/2021 
// Design Name: 
// Module Name:    alarm 
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

module alarm(
    input CLK,
    input enable,
    output reg BUZZER
    );

reg [25:0] count;

always @(posedge CLK) 
begin
  count <= count + 1;
  if ((count == 26'd12000) & enable) // 1kHz
  begin
    BUZZER <= ~ BUZZER;
    count <= 0;
  end
end

endmodule
