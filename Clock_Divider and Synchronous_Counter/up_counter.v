`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 03:13:56 PM
// Design Name: 
// Module Name: up_counter
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


module up_counter(Count, Carry2, En, Clk, Rst);
    //This program increments the 3 bit wide half adder by 1 at every rising clock edge
    output reg [2:0] Count;
    output wire Carry2;
    input wire En, Clk, Rst;
    
    wire [2:0] Carry, Sum;
    Threebit_counter UCL(Sum,Carry2,Count,En);
    
    // The command posedge clock activates the indented code when the clock edge rises
    always@(posedge Clk or posedge Rst)
        if(Rst)
            Count <= 0;
        else
            Count <= Sum;
endmodule

module Threebit_counter(Sum,Carry2,Count,En);
    //This entire program is just a 3 bit wide half adder 
    input wire En;
    input wire [2:0] Count;
    output wire [2:0] Sum;
    output wire Carry2;
    wire [2:0] Carry;
    // do stuff with half adders
    half_adder HA0(Sum[0], Carry[0], En, Count[0]);
    half_adder HA1(Sum[1], Carry[1], Carry[0], Count[1]);
    half_adder HA2(Sum[2], Carry2, Carry[1], Count[2]);
    
    
endmodule