`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:07:51 02/02/2022 
// Design Name: 
// Module Name:    mux2bit 
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
module mux2bit(ma_in, mb_in, sel, m_out);

input [3:0] ma_in;
input [3:0] mb_in;
input sel;
output [3:0] m_out;

reg [3:0] m_out;

always @(ma_in or mb_in or sel) begin

	if (sel == 1'b0) begin
		m_out = ma_in;
	end
	else if (sel == 1'b1) begin
		m_out = mb_in;
	end
	
end

endmodule
