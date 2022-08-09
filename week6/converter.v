`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/14 13:07:06
// Design Name: 
// Module Name: converter
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


module converter(
    input a,b,c,d,
    output x1,x2,x3,x4
    );
//assign x1=a|b&d|b&c;
//assign x2=a|b&c|b&~c&~d;
//assign x3=a|~b&c|b&~c&d;
//assign x4=d;
assign x1=~(~a&(~b|~d)&(~b|~c));
assign x2=~(~a&(~b|~c)&(~b|c|d));
assign x3=~(~a&(b|~c)&(~b|c|~d));
assign x4=~(~d);
endmodule
