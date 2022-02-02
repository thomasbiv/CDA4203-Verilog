`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:19:03 01/31/2022
// Design Name:   inv_primitive
// Module Name:   C:/Users/thomasbivins/Desktop/Lab2/Lab2/inv_primitive_testbench.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: inv_primitive
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module inv_primitive_testbench;

	// Inputs
	reg inp;

	// Outputs
	wire op;

	// Instantiate the Unit Under Test (UUT)
	inv_primitive uut (
		.inp(inp), 
		.op(op)
	);

	initial begin
		// Initialize Inputs
		inp = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		inp = 1;
		
		#100;
        
		// Add stimulus here

	end
      
endmodule

