`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 03:11:33 PM
// Design Name: 
// Module Name: two_four_decoder
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


module two_four_decoder(W, En, Y);
    // takes in a 2 bit encoded value and decodes it back into the original 4 bit input
    input wire [1:0] W;
    input wire En;
    output reg [3:0] Y;
    always@(*)
        begin
            // if statement checks if En equals 1 which tells the decoder to convert the W input
            if (En == 1'b1)
                case(W)
                    // the conversion logic is the same as the encoder just reversed
                    2'b00: Y = 4'b0001;
                    2'b01: Y = 4'b0010;
                    2'b10: Y = 4'b0100;
                    2'b11: Y = 4'b1000;
                endcase
            // if En is 0 the decoder outputs 4 bit 0
            else
                Y = 4'b0000;
        end
endmodule
