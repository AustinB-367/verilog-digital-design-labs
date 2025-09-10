`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2024 06:41:20 PM
// Design Name: 
// Module Name: d_latch_behavioral
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


module d_latch_behavioral(Q, notQ, D, En);
    // Establishing inputs 
    output reg Q;
    output wire notQ;
    input wire D, En;
    
    always @(En or D)
        if(En)
            Q=D;
    assign notQ = ~Q;
endmodule
