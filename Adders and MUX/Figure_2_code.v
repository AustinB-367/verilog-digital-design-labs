`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 07:38:11 PM
// Design Name: 
// Module Name: Figure_2_code
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



module four_bit_mux(Y, A, B, S);
    // Inputs are four bits because we're making a four bit MUX
    input wire [3:0] A, B;
    // S is a single bit because it is the selector bit for every 
    input wire S;
    // Y represents the four bit number selected by S
    output wire [3:0] Y;
    // Four bit MUX just runs a two_one_MUX with every bit of each of the inputs
    two_one_mux MUX0(Y[0], A[0], B[0], S);
    two_one_mux MUX1(Y[1], A[1], B[1], S);
    two_one_mux MUX2(Y[2], A[2], B[2], S);
    two_one_mux MUX3(Y[3], A[3], B[3], S);    
endmodule
