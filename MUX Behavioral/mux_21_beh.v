`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:53:43 01/31/2022 
// Design Name: 
// Module Name:    mux_21_beh 
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
module mux_21_beh(mux_in, sel, mux_out);

//Declare inputs/outputs
input sel;
input [1:0] mux_in;
output mux_out;

reg mux_out;

always @(sel or mux_in) begin

	if (sel == 1'b0) begin
		mux_out = mux_in[0];
	end
	else if (sel == 1'b1) begin
		mux_out = mux_in[1];
	end

end

endmodule
