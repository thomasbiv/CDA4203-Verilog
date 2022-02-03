`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:27:16 02/02/2022 
// Design Name: 
// Module Name:    fulladd4 
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
module fulladd4(A_inp, B_inp, C_inp, S_op);

input [3:0] A_inp;
input [3:0] B_inp;
input C_inp;
output [3:0] S_op;
//output C_op; -----Not using

reg [3:0] S_op;
//reg C_op;

always @(A_inp or B_inp or C_inp) begin

S_op = A_inp + B_inp + C_inp;
//C_op = ((A_inp ^ B_inp) && C_inp) || (A_inp && B_inp);
//C_op = (A_inp && B_inp) || (A_inp && C_inp) || (B_inp && C_inp);

end 


endmodule
