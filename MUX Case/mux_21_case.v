`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:43 01/31/2022 
// Design Name: 
// Module Name:    mux_21_case 
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
module mux_21_case(mux_in, sel, mux_out);

//Declare inputs/outputs
input sel;
input [1:0] mux_in;
output mux_out;

reg mux_out;

always @(sel or mux_in) begin

	case(sel)
		1'b0: mux_out = mux_in[0];
		1'b1: mux_out = mux_in[1];
		default: mux_out = 1'bz;
	endcase

end


endmodule
