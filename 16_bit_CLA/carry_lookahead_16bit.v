`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 08:07:29 PM
// Design Name: 
// Module Name: carry_lookahead_16bit
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


module carry_lookahead_16bit(Cout, S, X, Y, Cin);
    output wire Cout;
    output wire [15:0] S;
    input wire [15:0] X, Y;
    input wire Cin;
    
    wire [16:0] C;
    wire [15:0] P, G;
    wire [3:0] P_star, G_star;
    
    assign C[0] = Cin;
    generate_propagate_unit GP0(G, P, X, Y);
    
    block_carry_lookahead_unit BCL0(G_star[0], P_star[0], C[3:1], G[3:0], P[3:0], C[0]);
    block_carry_lookahead_unit BCL1(G_star[1], P_star[1], C[7:5], G[7:4], P[7:4], C[4]);
    block_carry_lookahead_unit BCL2(G_star[2], P_star[2], C[11:9], G[11:8], P[11:8], C[8]);
    block_carry_lookahead_unit BCL3(G_star[3], P_star[3], C[15:13], G[15:12], P[15:12], C[12]);
    
    carry_lookahead_unit CLA0(({C[16], C[12], C[8], C[4]}), G_star, P_star, C[0]);
    summation_unit SU0(S[15:0], P[15:0], C[15:0]);
    assign Cout = C[16];
    
endmodule
