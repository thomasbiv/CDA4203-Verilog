`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:06:46 02/02/2022
// Design Name:   inv4
// Module Name:   C:/Users/thomasbivins/Desktop/Lab2/Lab2/Lab2/inv4_testbench.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: inv4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module inv4_testbench;

	// Inputs
	reg [3:0] A_in;

	// Outputs
	wire [3:0] A_out;

	// Instantiate the Unit Under Test (UUT)
	inv4 uut (
		.A_in(A_in[3:0]), 
		.A_out(A_out[3:0])
	);

	initial begin
		// Initialize Inputs
		A_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		A_in = 5;
		
		#100;
		
		A_in = 15;
		
		#100;
        
		// Add stimulus here

	end
      
endmodule

