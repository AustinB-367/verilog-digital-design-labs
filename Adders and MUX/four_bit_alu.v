`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 03:45:41 PM
// Design Name: 
// Module Name: four_bit_alu
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


module four_bit_alu(opA, opB, ctrl, Result, Overflow);
    // Similar to add_sub we're taking in two four bit numbers
    // This ALU has the ability to perform bit wise AND on the numbers 
    // depending on ctrl[0]
    input wire [3:0] opA, opB;
    input wire [1:0] ctrl;
    output wire [3:0] Result;
    output wire Overflow;
    
    // assigning the bit wise AND to the 4-bit wire andAB
    wire [3:0] andAB;
    assign andAB[0] = opA[0] & opB[0];
    assign andAB[1] = opA[1] & opB[1];
    assign andAB[2] = opA[2] & opB[2];
    assign andAB[3] = opA[3] & opB[3];
    
    wire [3:0] calc;
    wire overflow;
    // The add_sub module created previously performs the addition or subtraction with 
    // opSel being represented by ctrl[1]
    add_sub adsb0(opA, opB, ctrl[1], calc, overflow);
    
    // four bit mux created previously is used here to select either 
    // bit wise AND or the add_sub calculation
    four_bit_mux mux0(Result, andAB, calc, ctrl[0]);
    
    assign Overflow = ctrl[0] & overflow;
    
endmodule
