`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2024 11:21:02 AM
// Design Name: 
// Module Name: carry_lookahead_4bit
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


module carry_lookahead_4bit(Cout, S, X, Y, Cin);
    output wire Cout;
    output wire [3:0] S;
    input wire [3:0] X, Y;
    input wire Cin;
    
    wire [3:0] P, G;
    wire [4:0] C;
    assign C[0] = Cin;
    
    generate_propagate_unit GP0(G, P, X, Y);
    carry_lookahead_unit CL0(C[4:1], G, P, C[0]);
    summation_unit SUM0(S, P, C[3:0]);
    assign Cout = C[4];
endmodule
