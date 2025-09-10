
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 06:33:24 PM
// Design Name: 
// Module Name: four_bit_mux
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


`timescale 1ns / 1ps
`default_nettype none
module four_bit_mux(Y, A, B, S);

output reg [3:0] Y;
input wire [3:0] A, B;
input wire S;

// logic is very similar to two_one_mux logic but just increases the size of inputs A and B
// S is still a one bit number that determines whether output is A or B
always@(A or B or S)
    begin
    if(S == 1'b0)
        Y = A;
    else
        Y = B;
    end
endmodule
