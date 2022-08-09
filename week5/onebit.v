`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/07 15:17:14
// Design Name: 
// Module Name: onebit
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


module onebit(
    input a,b,
    output fa,fb,fc,fd
    );
assign fa=~(a^b);
assign fb=a^b;
assign fc=a&~b;
assign fd=~a&b;
endmodule
