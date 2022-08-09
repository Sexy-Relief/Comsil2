`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/27 19:13:33
// Design Name: 
// Module Name: sevenseg_tb
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


module sevenseg_tb;
reg AA,BB,CC,DD;
wire aa,bb,cc,dd,ee,ff,gg,dpdp;

sevenseg u_sevenseg(
    .A(AA),
    .B(BB),
    .C(CC),
    .D(DD),
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .e(ee),
    .f(ff),
    .g(gg),
    .dp(dpdp));
initial begin
    AA=1'b0;
    BB=1'b0;
    CC=1'b0;
    DD=1'b0;
end

always AA=#400 ~AA;
always BB=#200 ~BB;
always CC=#100 ~CC;
always DD=#50 ~DD;

initial begin
    #800
    $finish;
end    
endmodule