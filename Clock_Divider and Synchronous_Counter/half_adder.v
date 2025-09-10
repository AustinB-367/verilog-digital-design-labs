`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 03:07:03 PM
// Design Name: 
// Module Name: half_adder
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


module half_adder(S, Cout, A, B);
    //A and B are both a 1 bit binary number
    output wire Cout, S;
    input wire A, B;
    //Cout is the most significant digit while S is the least signifcant digit
    //Binary 2 is 10 therefore when both A and B are 1 Cout goes to 1 
    assign Cout = A & B;
    assign S = A ^ B;
    
endmodule
