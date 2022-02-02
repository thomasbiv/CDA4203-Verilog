`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:55:07 01/31/2022
// Design Name:   and_21
// Module Name:   C:/Users/thomasbivins/Desktop/Lab2/Lab2/and_21_testbench.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: and_21
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module and_21_testbench;

	// Inputs
	reg in1;
	reg in2;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	and_21 uut (
		.in1(in1), 
		.in2(in2), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in1 = 0;
		in2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		in1 = 1;
		
		#100;
		
		in1 = 0;
		in2 = 1;
		
		#100;
		
		in1 = 1;
		
		#100;
        
		// Add stimulus here

	end
      
endmodule

