`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 14:59:46
// Design Name: 
// Module Name: fulladd4
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


module fulladd(
       input a,b,cin,
       output s,cout
       );
       assign s = a^b^cin;
       assign cout =(a&b)|(cin&(a^b));
endmodule

module fulladd4(
    input [3:0] A,
    input [3:0] B,
    input C0,
    output [3:0] S,
    output C4
    );
    wire C1,C2,C3;

    fulladd fa0 (A[0],B[0],C0,S[0],C1);
    fulladd fa1 (A[1],B[1],C1,S[1],C2);
    fulladd fa2 (A[2],B[2],C2,S[2],C3);
    fulladd fa3 (A[3],B[3],C3,S[3],C4);
endmodule