`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2024 10:41:13 AM
// Design Name: 
// Module Name: generate_propagate_unit
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


module generate_propagate_unit(G, P, X, Y);
    output wire [15:0] G, P;
    input wire [15:0] X, Y;
    
    //These operations are preparing the inputs of the Carry lookahead unit 
    assign #2 G = X & Y;
    assign #2 P = X ^ Y;
    
endmodule
