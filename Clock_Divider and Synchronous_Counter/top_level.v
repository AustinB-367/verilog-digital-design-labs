`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 07:24:33 PM
// Design Name: 
// Module Name: top_level
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


module top_level(LEDs, SWs, BTNs, FastClk);
    input wire FastClk;
    input wire [0:1] SWs, BTNs;
    output wire [3:0] LEDs;
    
    
    wire [3:0] Clocks;
    reg SlowClk;
    
    //The switches determine the rate of the clock attatched to the up counter
    always@(*)
        case(SWs)
            2'b00: SlowClk = Clocks[0];
            2'b01: SlowClk = Clocks[1];
            2'b10: SlowClk = Clocks[2];
            2'b11: SlowClk = Clocks[3];
        endcase
    // instatiate the up_counter here
    // The buttons control the EN and input of the half adders in the up counter
    up_counter UC0(.Count(LEDs[2:0]), .Carry2(LEDs[3]),.En(BTNs[0]), .Clk(SlowClk), .Rst(BTNs[1]));
    
    clock_divider clk_div0(.ClkOut(Clocks), .ClkIn(FastClk));
endmodule
