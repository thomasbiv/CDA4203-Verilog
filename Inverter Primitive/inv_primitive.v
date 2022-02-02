`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:00:32 01/31/2022 
// Design Name: 
// Module Name:    inv_primitive 
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
module inv_primitive(inp, op);

//Declare inputs/outputs
input inp;
output op;

//Set op as the inverse of inp
assign op = ~inp;

endmodule
