`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 02:44:35 PM
// Design Name: 
// Module Name: two_one_mux_behavioral
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
module two_one_mux(Y, A, B, S);

output reg Y;
input wire A, B, S;
// always function will activate the code indented in it when A B or S change
always@(A or B or S)
    begin
    // if statements allow assigning outputs depending on specific input values
    // S = 1 assings the output to A and S = 0 assigns output to B
    if(S == 1'b0)
        Y = A;
    else
        Y = B;
    end
endmodule
