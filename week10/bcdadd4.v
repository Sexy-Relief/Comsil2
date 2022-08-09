`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 15:25:08
// Design Name: 
// Module Name: bcdadd4
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

module bcdadd4(
    input [3:0] A,
    input [3:0] B,
    input C0,
    output [3:0] S,
    output Carry
    );
    wire C1,C2,C3;
    wire CC1,CC2,CC3,CC4;
    wire S0,S1,S2,S3;
    wire carry;
    wire [3:0] additional;
    
    fulladd fa0 (A[0],B[0],C0,S0,C1);
    fulladd fa1 (A[1],B[1],C1,S1,C2);
    fulladd fa2 (A[2],B[2],C2,S2,C3);
    fulladd fa3 (A[3],B[3],C3,S3,C4);
    
    assign carry=C4|S3&S2|S3&S1;
    assign additional[2]=carry;
    assign additional[1]=carry;
    assign additional[3]=0;
    assign additional[0]=0;
    assign Carry=carry;
    
    fulladd ffa0 (S0,additional[0],0,S[0],CC1);
    fulladd ffa1 (S1,additional[1],CC1,S[1],CC2);
    fulladd ffa2 (S2,additional[2],CC2,S[2],CC3);
    fulladd ffa3 (S3,additional[3],CC3,S[3],CC4);
    
endmodule
