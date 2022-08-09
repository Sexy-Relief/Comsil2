`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/16 15:35:00
// Design Name: 
// Module Name: _twoand_tb
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


module _twoand_tb;
reg aa,bb,cc;
wire dd,ee;

_twoand u_twoand(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .e(ee));

initial begin
    aa=1'b0;
    bb=1'b0;
    cc=1'b0;
end

always begin
    cc=#100 ~cc;
    bb=#100 ~bb;
    cc=#100 ~cc;
    aa=#100 ~aa;
    bb=#100 ~bb;
    cc=#100 ~cc;
    bb=#100 ~bb;
end

initial begin
    #800
    $finish;
end
endmodule
