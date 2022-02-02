`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:17:10 02/01/2022
// Design Name:   ALU_beh
// Module Name:   C:/Users/thomasbivins/Desktop/Lab2/Lab2/ALU_beh_testbench.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_beh
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_beh_testbench;

	// Inputs
	reg [3:0] A_in;
	reg [3:0] B_in;
	reg [1:0] Sel_in;

	// Outputs
	wire [3:0] Y_out;

	// Instantiate the Unit Under Test (UUT)
	ALU_beh uut (
		.A_in(A_in[3:0]), 
		.B_in(B_in[3:0]), 
		.Sel_in(Sel_in[1:0]), 
		.Y_out(Y_out[3:0])
	);

	initial begin
		// Initialize Inputs
		A_in = 5;
		B_in = 4;
		Sel_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Sel_in = 1;
		
		#100;
		
		Sel_in = 2;
		
		#100;
		
		Sel_in = 3;
		
		#100;
        
		// Add stimulus here

	end
      
endmodule

