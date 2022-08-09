`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/14 13:07:06
// Design Name: 
// Module Name: fulladd
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
    output s,c
    );
assign s=a^b^cin;
assign c=(a&b)|cin&(a^b);
endmodule
