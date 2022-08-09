`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 15:39:51
// Design Name: 
// Module Name: decode
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


module decode(
    input a,b,
    output d0,d1,d2,d3
    );
assign d0=~(~a&~b);
assign d1=~(~a&b);
assign d2=~(a&~b);
assign d3=~(a&b);
endmodule

