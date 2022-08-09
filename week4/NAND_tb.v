`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/30 15:14:32
// Design Name: 
// Module Name: NAND_tb
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


module NAND_tb;
reg aa,bb,cc,dd;
wire ee,ff,gg;

NAND U_NAND(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .e(ee),
    .f(ff),
    .g(gg));
initial begin
    aa=1'b0;
    bb=1'b0;
    cc=1'b0;
    dd=1'b0;
end

always aa=#400 ~aa;
always bb=#200 ~bb;
always cc=#100 ~cc;
always dd=#50 ~dd;

initial begin
    #800
    $finish;
end
endmodule
