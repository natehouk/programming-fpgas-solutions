`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:11:10 01/03/2021 
// Design Name: 
// Module Name:    wav_player 
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

module wav_player(
    input CLK,
    input switch_play,
	 output reg audio_out
    );
	 
localparam MEM_SIZE = 3901; // 

reg [7:0] memory[MEM_SIZE-1:0];
initial begin
  $readmemh("audio.txt", memory);
end

wire s_start;
debouncer d1(.CLK (CLK), .switch_input (switch_play), .trans_up (s_start));

reg play = 0;
reg [3:0] prescaler; 
reg [7:0] counter;
reg [19:0] address;
reg [7:0] value;

always @(posedge CLK)
begin
  if (play)
  begin
    prescaler <= prescaler + 1;
    if (prescaler == 5)  // 8kHz x 256 steps = 2.048 MHz
    begin
      prescaler <= 0;
	   counter <= counter + 1;
      value <= memory[address];
      audio_out <= (value > counter);
      if (counter == 255)
      begin
        address <= address + 1;
        if (address == MEM_SIZE)
        begin
          play <= 0;
			 address <= 0;
        end			 
      end		
    end
  end
  if (s_start)
  begin
    play <= 1;
  end	 
end

endmodule