`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2024 04:25:56 PM
// Design Name: 
// Module Name: d_latch
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


module d_latch(D, En, Q, notQ);
    input wire D, En;
    output wire Q, notQ;
    wire nandDEn, nandDnotEn, notD;
    not #2 not0(notD, D);
    nand #2 nand0(nandDEn, D, En);
    nand #2 nand1(nandDnotEn, notD, En);
    nand #2 nand2(Q, nandDEn, notQ);
    nand #2 nand3(notQ, nandDnotEn, Q);
endmodule
