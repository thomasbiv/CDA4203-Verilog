`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:49:19 02/02/2022
// Design Name:   fulladd4
// Module Name:   C:/Users/thomasbivins/Desktop/Lab2/Lab2/Lab2/fulladd4_testbench.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladd4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fulladd4_testbench;

	// Inputs
	reg [3:0] A_inp;
	reg [3:0] B_inp;
	reg C_inp;

	// Outputs
	wire [3:0] S_op;
	//wire C_op;

	// Instantiate the Unit Under Test (UUT)
	fulladd4 uut (
		.A_inp(A_inp[3:0]), 
		.B_inp(B_inp[3:0]), 
		.C_inp(C_inp), 
		.S_op(S_op[3:0])
		//.C_op(C_op)
	);

	initial begin
		// Initialize Inputs
		A_inp = 0;
		B_inp = 0;
		C_inp = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		//Test Subtraction (15 - 10)
		A_inp = 15;
		B_inp = 5;
		C_inp = 1;
		
		#100;
		
		//Test Addition w/ Carry Out (8 + 8)
		A_inp = 8;
		B_inp = 8;
		C_inp = 0;
		
		#100;
		
		//Test Addition w/o Carry Out (5 + 4)
		A_inp = 5;
		B_inp = 4;
		
		#100;
		
		//Test Addition w/ Carry In (6 + 2 + 1)
		A_inp = 6;
		B_inp = 2;
		C_inp = 1;
		
		#100;
        
		// Add stimulus here

	end
      
endmodule

