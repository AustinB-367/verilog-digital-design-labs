`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 05:41:30 PM
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(input wire [3:0] W, output reg [1:0] Y, output wire zero);
    assign zero = (W == 4'b0000);
    // main logic of the code is nearly the same as the previous dour two encoder
    always@(*)
        begin
            // casex allows the case function to not care about certain bits of input 
            // the code (4'b1XXX: ) ignores every other bit in the input W and assigns Y = 2'b11 if 
            // the most significant bit of W is 1
            casex(W)
                4'b0001: Y = 2'b00;
                4'b001X: Y = 2'b01;
                4'b01XX: Y = 2'b10;
                4'b1XXX: Y = 2'b11;
                default: Y = 2'bXX;
            endcase
        end
    endmodule