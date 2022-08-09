`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/30 15:41:49
// Design Name: 
// Module Name: AOI
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


module AOI(
    input a,b,c,d,
    output e,f,g
    );
assign e=a&b;
assign f=c&d;
assign g=~(e|f);
endmodule
