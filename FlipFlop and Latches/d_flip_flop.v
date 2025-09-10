`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2024 06:34:30 PM
// Design Name: 
// Module Name: d_flip_flop
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

module d_flip_flop(Q, notQ, Clk, D);
    output wire Q, notQ;
    input wire Clk, D;
    wire notClk, notNotClk;
    wire Qm, notQm;
    not not0(notClk, Clk);
    d_latch dlatch0(D, notClk, Qm, notQm);
    d_latch dlatch1(Qm, Clk, Q, notQ);
endmodule
