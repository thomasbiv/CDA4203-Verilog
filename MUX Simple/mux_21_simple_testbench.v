`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:28:19 01/31/2022
// Design Name:   mux_21_simple
// Module Name:   C:/Users/thomasbivins/Desktop/Lab2/Lab2/mux_21_simple_testbench.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_21_simple
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_21_simple_testbench;

	// Inputs
	reg sel;
	reg [1:0] mux_in;
	
	// Outputs
	wire mux_out;

	// Instantiate the Unit Under Test (UUT)
	mux_21_simple uut (
		.sel(sel),
		.mux_in(mux_in[1:0]),
		.mux_out(mux_out)
	);

	initial begin
		// Initialize Inputs
		sel = 0;
		mux_in[0] = 1;
		mux_in[1] = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		sel = 1;
		
		#100;
        
		// Add stimulus here

	end
      
endmodule

