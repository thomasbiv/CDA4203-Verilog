`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:02:51 02/02/2022 
// Design Name: 
// Module Name:    inv4 
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
module inv4(A_in, A_out);

input [3:0] A_in;
output [3:0] A_out;

assign A_out = ~A_in;

endmodule




