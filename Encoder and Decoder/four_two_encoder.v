`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 03:43:11 PM
// Design Name: 
// Module Name: four_two_encoder
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


module four_two_encoder(input wire [3:0] W, output reg [1:0] Y, output wire zero);
    // whole function will take in a 4 bit input and convert it into a 2 bit output for specific cases
    assign zero = (W == 4'b0000);
    // assign function has the capability to assign values for specified values of inputs
    always@(*)
        begin
            // The logic for using case and assinging values based on the given variable is similar to MUX code
            case(W)
                4'b0001: Y = 2'b00;
                4'b0010: Y = 2'b01;
                4'b0100: Y = 2'b10;
                4'b1000: Y = 2'b11;
                // Default function will cover all other values not prevously listed 
                default: Y = 2'bXX;
            endcase
        end  
endmodule
