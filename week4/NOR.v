`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/30 15:26:36
// Design Name: 
// Module Name: NOR
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


module NOR(
    input a,b,c,d,
    output e,f,g
    );
assign e=~(a|b);
assign f=~(e|c);
assign g=~(f|d);
endmodule

