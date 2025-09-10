`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2024 11:15:45 AM
// Design Name: 
// Module Name: sumation_unit
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


module summation_unit(S, P, C);
    output wire [15:0] S;
    input wire [15:0] P, C;
    
    //computes the sum to be the XOR operation of all P and C bits
    assign #2 S = P ^ C;
endmodule
