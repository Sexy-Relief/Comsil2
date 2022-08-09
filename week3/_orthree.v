`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/16 17:14:21
// Design Name: 
// Module Name: _orthree
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


module _orthree(
    input a,b,c,d,
    output e,f,g
    );
    assign e=a|b;
    assign f=c|e;
    assign g=d|f;
endmodule
