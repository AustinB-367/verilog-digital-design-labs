`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 06:41:59 PM
// Design Name: 
// Module Name: mux_4bit_4to1
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


module mux_4bit_4to1(Y, A, B, C, D, S);
    // Since there are four inputs S needs to be a 2 bit number which has 4 possible values
    output reg [3:0] Y;
    input wire [3:0] A, B, C, D;
    input wire [1:0] S;
    // Case funciton allows code to be allocated for each seperate instance of the specified variable
    // case(S) function is used in very similar way as the if else function from the previous MUX codes
    always@(*)
        case(S)
            2'b00: Y = A;
            2'b01: Y = B;
            2'b10: Y = C;
            2'b11: Y = D;
        endcase
endmodule
