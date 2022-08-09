`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 16:01:40
// Design Name: 
// Module Name: mux_tb
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


module mux_tb;
reg aa,bb,AA,BB,CC,DD;
wire oo;

mux u_mux(
    .a(aa),
    .b(bb),
    .A(AA),
    .B(BB),
    .C(CC),
    .D(DD),
    .o(oo));
initial begin
    aa=1'b0;
    bb=1'b0;
    AA=1'b0;
    BB=1'b0;
    CC=1'b0;
    DD=1'b0;
end
always aa=#100 ~aa;
always bb=#50 ~bb;
always AA=#400 ~AA;
always BB=#200 ~BB;
always CC=#100 ~CC;
always DD=#50 ~DD;

initial begin
    #800
    $finish;
end

endmodule