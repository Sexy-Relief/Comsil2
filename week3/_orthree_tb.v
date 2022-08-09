`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/16 17:15:06
// Design Name: 
// Module Name: _orthree_tb
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


module _orthree_tb;
reg aa,bb,cc,dd;
wire ee,ff,gg;
    
_orthree u_orthree(
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
    
always begin
    cc=#50 ~cc;
    bb=#50 ~bb;
    cc=#50 ~cc;
    aa=#50 ~aa;
    bb=#50 ~bb;
    cc=#50 ~cc;
    bb=#50 ~bb;
    dd=#50 ~dd;
    bb=#50 ~bb;
    cc=#50 ~cc;
    bb=#50 ~bb;
    aa=#50 ~aa;
    cc=#50 ~cc;
    bb=#50 ~bb;
    cc=#50 ~cc;
end
    
initial begin
   #800
   $finish;
end
endmodule