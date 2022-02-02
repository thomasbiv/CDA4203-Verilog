`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:06 01/31/2022 
// Design Name: 
// Module Name:    nand_21 
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
module nand_21(inp_a, inp_b, nand_out);

//Inputs/outputs to the design
input inp_a, inp_b;
output nand_out;

//This wire will connect the and output with the inverter input
wire and1_inv1;

//Declare the 'and' instance.
// Name it and1.
// You can split it acros multiple lines to make it easier to read.

and_21 and1 (
	.in1(inp_a),
	.in2(inp_b),
	.out(and1_inv1)
	);
	
//Declare the 'inverter' instance
// Name it inv1
inverter inv1(
	.inp(and1_inv1),
	.op(nand_out)
);


endmodule
