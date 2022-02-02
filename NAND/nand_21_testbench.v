`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:05:10 01/31/2022
// Design Name:   nand_21
// Module Name:   C:/Users/thomasbivins/Desktop/Lab2/Lab2/nand_21_testbench.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: nand_21
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module nand_21_testbench;

	// Inputs
	reg inp_a;
	reg inp_b;

	// Outputs
	wire nand_out;

	// Instantiate the Unit Under Test (UUT)
	nand_21 uut (
		.inp_a(inp_a), 
		.inp_b(inp_b), 
		.nand_out(nand_out)
	);

	initial begin
		// Initialize Inputs
		inp_a = 0;
		inp_b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		inp_a = 1;
		
		#100;
		
		inp_a = 0;
		inp_b = 1;
		
		#100;
		
		inp_a = 1;
		
		#100;
        
		// Add stimulus here

	end
      
endmodule

