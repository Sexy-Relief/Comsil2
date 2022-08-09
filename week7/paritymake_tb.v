`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/27 15:54:43
// Design Name: 
// Module Name: paritymake_tb
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


module paritymake_tb;
reg aa,bb,cc,dd;
wire pp;

paritymake u_paritymake(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .p(pp));
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
