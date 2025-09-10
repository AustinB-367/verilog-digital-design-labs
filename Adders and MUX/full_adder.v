`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 08:01:16 PM
// Design Name: 
// Module Name: Full_adder
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


module Full_adder(S, Cout, A, B, Cin);
    input wire A, B, Cin;
    output wire S, Cout;
    
    wire andBCin, andACin, andAB;
    
    assign andAB = A & B;
    assign andACin = A & Cin;
    assign andBCin = B & Cin;
    assign S = A ^ B ^ Cin;
    assign Cout = andBCin | andACin | andAB;
    
endmodule
