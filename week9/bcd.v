`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 15:45:36
// Design Name: 
// Module Name: bcd
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


module bcd(
    input a3,a2,a1,a0,
    output o1,o2,o3,o4,o5,o6,o7,o8,o9
    );
assign o9=a3&~a2&~a1&a0;
assign o8=a3&~a2&~a1&~a0;
assign o7=~a3&a2&a1&a0;
assign o6=~a3&a2&a1&~a0;
assign o5=~a3&a2&~a1&a0;
assign o4=~a3&a2&~a1&~a0;
assign o3=~a3&~a2&a1&a0;
assign o2=~a3&~a2&a1&~a0;
assign o1=~a3&~a2&~a1&a0;
endmodule

