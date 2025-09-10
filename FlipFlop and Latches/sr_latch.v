`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2024 03:41:07 PM
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(Q, notQ, En, S, R);
    output wire Q, notQ;
    input wire En, S, R;
    wire andSEN, andREN;
    and #2 and0(andSEN, S, En);
    and #2 and1(andREN, R, En);
    nor #2 nor0(Q, andREN, notQ);
    nor #2 nor1(notQ, andSEN, Q);
endmodule
