`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 06:19:14 PM
// Design Name: 
// Module Name: adder_2bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adder_2bit(A, B, Sum, Carry);
    input [1:0] A, B;
    output [1:0] Sum;
    output Carry;
    wire C0, C1;
    full_adder adder0(Sum[0], C0, A[0], B[0], 0);
    full_adder adder1(Sum[1], C1, A[1], B[1], C0);
    assign Carry = C1;
endmodule
