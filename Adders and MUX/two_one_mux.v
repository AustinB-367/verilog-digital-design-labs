`timescale 1ns / 1ps
`default_nettype none
module two_one_mux( Y, A, B , S );
    output wire Y;
    input wire A, B, S;
    
    wire notS;
    wire andA;
    wire andB;
    
    // Setting up not S and S to plug into the two AND gates
    // This makes S the select bit in the MUX
    not not0(notS, S);
    // Wiring S and B into AND1 means when S is 1, B is selected
    and and0(andA, notS, A);
    and and1(andB, S, B);
    //The final Y output will mirror A or B depending on whether S was 1 or 0
    or or0(Y, andA, andB);
    
endmodule
    
