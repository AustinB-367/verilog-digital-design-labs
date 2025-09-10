`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2024 06:17:32 PM
// Design Name: 
// Module Name: d_filp_flop
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


module d_filp_flop(Q, notQ, Clk, D);
    input wire Clk, D;
    output wire Q, notQ;
    wire Qm, trash, notClk;
    not not0(notClk, Clk);
    d_latch dlatch0(D, notClk, Qm, trash);
    d_latch dlatch1(Qm, Clk, Q, notQ);
endmodule
