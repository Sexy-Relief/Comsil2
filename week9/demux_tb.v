`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 16:24:10
// Design Name: 
// Module Name: demux_tb
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


module demux_tb;
reg aa,bb,oo;
wire AA,BB,CC,DD;

demux u_demux(
    .a(aa),
    .b(bb),
    .o(oo),
    .A(AA),
    .B(BB),
    .C(CC),
    .D(DD));
initial begin
    aa=1'b0;
    bb=1'b0;
    oo=1'b0;
end

always aa= #400 ~aa;
always bb=#200 ~bb;
always oo=#100 ~oo;

initial begin
    #800
    $finish;
end
endmodule
