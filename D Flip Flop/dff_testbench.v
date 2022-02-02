`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:33:07 01/31/2022
// Design Name:   dff
// Module Name:   C:/Users/thomasbivins/Desktop/Lab2/Lab2/dff_testbench.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dff_testbench;

	// Inputs
	reg clk;
	reg d;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.clk(clk), 
		.d(d), 
		.q(q)
	);
	
	//Creates a clock with 100ns cycle time.
	//50ns low and 50ns high
	always begin //Basically, while(true)
		clk = 1'b0; //Clock = 0
		#50;			//Wait 50ns
		clk = 1'b1;	//Clock = 1
		#50;			//Wait 50ns and repeat
	end

	initial begin
		// Initialize Inputs
		d = 0;
		// Wait 100 ns for global reset to finish
		#100;
		//Start test values
		d = 1;
		#130;
		d = 0;
	end
      
endmodule

