`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/27 15:53:20
// Design Name: 
// Module Name: twobitcomp
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


module twobitcomp(
    input a1,a2,b1,b2,
    output f1,f2,f3
    );
    //assign f1=a1&~b1||~(a1^b1)&&a2&~b2;
    //assign f2=~(a1^b1)&&~(a2^b2);
    //assign f3=~a1&b1||~(a1^b1)&&~a2&b2;
    assign f1=(a1&~b1) | (a1&a2&~b2) | (a2&~b1&~b2);
    assign f2=(~a1&~a2&~b1&~b2) | (~a1&a2&~b1&b2) | (a1&a2&b1&b2) | (a1&~a2&b1&~b2);
    assign f3=(~a1&b1) | (~a1&~a2&b2) | (~a2&b1&b2);
endmodule
