`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:21:32 01/31/2022 
// Design Name: 
// Module Name:    mux_21_simple 
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
module mux_21_simple(mux_in, sel, mux_out);

//Declare inputs/outputs
input sel;
input [1:0] mux_in;
output mux_out;

assign mux_out = (sel) ? mux_in[1] : mux_in[0];

endmodule