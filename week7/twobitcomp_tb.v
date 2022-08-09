`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/27 15:54:43
// Design Name: 
// Module Name: twobitcomp_tb
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


module twobitcomp_tb;
reg aa1,aa2,bb1,bb2;
wire ff1,ff2,ff3;

twobitcomp u_twobitcomp(
    .a1(aa1),
    .a2(aa2),
    .b1(bb1),
    .b2(bb2),
    .f1(ff1),
    .f2(ff2),
    .f3(ff3));
initial begin
    aa1=1'b0;
    aa2=1'b0;
    bb1=1'b0;
    bb2=1'b0;
end

always aa1=#400 ~aa1;
always aa2=#200 ~aa2;
always bb1=#100 ~bb1;
always bb2=#50 ~bb2;

initial begin
    #800
    $finish;
end    
endmodule
