`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 02:59:36 PM
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(ClkOut, ClkIn);
    output wire [3:0] ClkOut;
    input wire ClkIn;
    
    // making n = 26 allows the clock to be divided by 2^26
    parameter n = 26;
    reg [n:0] Count;
    
    always@(posedge ClkIn)
        Count <= Count + 1;
        
    //The output is a much much much slower clock rate than the input
    assign ClkOut[3:0] = Count [n:n-3];
endmodule
