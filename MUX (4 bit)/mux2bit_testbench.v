`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:24:28 02/02/2022
// Design Name:   mux2bit
// Module Name:   C:/Users/thomasbivins/Desktop/Lab2/Lab2/Lab2/mux2bit_testbench.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux2bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux2bit_testbench;

	// Inputs
	reg [3:0] ma_in;
	reg [3:0] mb_in;
	reg sel;

	// Outputs
	wire [3:0] m_out;

	// Instantiate the Unit Under Test (UUT)
	mux2bit uut (
		.ma_in(ma_in[3:0]), 
		.mb_in(mb_in[3:0]), 
		.sel(sel), 
		.m_out(m_out[3:0])
	);

	initial begin
		// Initialize Inputs
		ma_in = 0;
		mb_in = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		ma_in = 15;
		mb_in = 10;
		sel = 0;
        
		// Add stimulus here
		
		#100;
		
		sel = 1;
		
		#100;

	end
      
endmodule

