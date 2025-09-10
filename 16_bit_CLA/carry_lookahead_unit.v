`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2024 10:59:50 AM
// Design Name: 
// Module Name: carry_lookahead_unit
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


module carry_lookahead_unit(C, G, P, C0);
output wire [4:1] C;
input wire [3:0] G, P;
input wire C0;

// Sacrafices simplicity for a greatly reduced propagation delay
assign #4 C[1] = G[0] + (P[0] & C0);
assign #4 C[2] = G[1] + (P[1] & G[0]) + (P[1] & P[0] & C0);
assign #4 C[3] = G[2] + (P[2] & G[1]) + (P[2] & P[1] & G[0]) + (P[2] & P[1] & P[0] & C0);
assign #4 C[4] = G[3] + (P[3] & G[2]) + (P[3] & P[2] & G[1]) + (P[3] & P[2] & P[1] & G[0]) + (P[3] & P[2] & P[1] & P[0] & C0);
endmodule
