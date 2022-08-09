`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/14 13:07:06
// Design Name: 
// Module Name: fullsub
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


module fullsub(
    input a,b,prevb,
    output B,D
    );
assign B=~a&b|prevb&~(a^b);
assign D=a^b^prevb;
endmodule

