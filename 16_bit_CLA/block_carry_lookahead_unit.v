`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 07:52:07 PM
// Design Name: 
// Module Name: block_carry_lookahead_unit
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


module block_carry_lookahead_unit(G_star, P_star, C, G, P, C0);
    output wire G_star, P_star;
    output wire [3:1] C;
    input wire [3:0] G, P;
    input wire C0;
    
    //Very similar in design to the carry lookahead unit but with the added outputs of p_star abd g_star
    assign #4 C[1] = G[0] + (P[0] * C0);
    assign #4 C[2] = G[1] + (P[1] * G[0]) + (P[0] * P[1] * C0);
    assign #4 C[3] = G[2] + (P[2] * G[1]) + (P[2] * P[1] * G[0]) + (P[2] * P[1] * P[0] * C0);
    assign #4 G_star = G[3] + (P[3] * G[2]) + (P[3] * P[2] * G[1]) + (P[3] * P[2] * P[1] * G[0]);
    assign #2 P_star = (P[3] * P[2] * P[1] * P[0]);
endmodule

