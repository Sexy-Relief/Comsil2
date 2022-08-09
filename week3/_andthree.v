`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/16 16:29:18
// Design Name: 
// Module Name: _andthree
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


module _andthree(
    input a,b,c,d,
    output e,f,g
    );
    assign e=a&b;
    assign f=c&e;
    assign g=d&f;
endmodule
