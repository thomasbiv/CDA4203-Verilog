`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:02:05 02/01/2022 
// Design Name: 
// Module Name:    ALU_beh 
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
module ALU_beh(A_in, B_in, Sel_in, Y_out);

input [3:0] A_in;
input [3:0] B_in;
input [1:0] Sel_in;
output [3:0] Y_out;

reg [3:0] Y_out;

always @(Sel_in or A_in or B_in) begin

	if (Sel_in == 2'b00) begin //Case 0 - Invert
		Y_out = ~A_in;
	end
	else if (Sel_in == 2'b01) begin //Case 1 - Addition
		Y_out = A_in + B_in;
	end
	else if (Sel_in == 2'b10) begin //Case 2  - Subtraction
		Y_out = A_in - B_in;
	end
	else if (Sel_in == 2'b11) begin //Case 3 - Double
		Y_out = 2 * A_in;
	end
	

end

endmodule
