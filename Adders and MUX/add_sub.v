`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 08:29:55 PM
// Design Name: 
// Module Name: add_sub
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


module add_sub(opA, opB, opSel, Sum, Overflow);
    // opA opB and Sum are all 4 bit numbers since we're adding two fou-bit numbers
    // opSel is the selector bit going through the MUX
    input wire [3:0] opA, opB;
    input wire opSel;
    output wire [3:0] Sum;
    output wire Overflow;
    
    // The xorB wire uses opSel XOR with B to flip the B bits in the case of subtraction
    wire [3:0] xorB;
    assign xorB[0] = opB[0] ^ opSel;
    assign xorB[1] = opB[1] ^ opSel;
    assign xorB[2] = opB[2] ^ opSel;
    assign xorB[3] = opB[3] ^ opSel;
    
    // The adders take in xorB opA abd opSel where they all values together
    // Subtractin is performed when opSel is 1 
    wire C0, C1, C2, C3;
    full_adder adder0(Sum[0], C0, xorB[0], opA[0], opSel);
    full_adder adder1(Sum[1], C1, xorB[1], opA[1], C0);
    full_adder adder2(Sum[2], C2, xorB[2], opA[2], C1);
    full_adder adder3(Sum[3], C3, xorB[3], opA[3], C2);
    
    assign Overflow = C3 ^ C2;
    
    
    
    
endmodule
