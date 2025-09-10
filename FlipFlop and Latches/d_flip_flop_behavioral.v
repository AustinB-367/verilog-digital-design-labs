`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2024 06:51:30 PM
// Design Name: 
// Module Name: d_flip_flop_behavioral
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


module d_flip_flop_behavioral(Q, notQ, D, Clk);
    output reg Q;
    output wire notQ;
    input wire D;
    input wire Clk;
    
    always@(posedge Clk)
        Q<=D;
    assign notQ = ~Q;
endmodule
