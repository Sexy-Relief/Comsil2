`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 15:40:09
// Design Name: 
// Module Name: decode_tb
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


module decode_tb;
reg aa,bb;
wire dd0,dd1,dd2,dd3;

decode u_decode(
    .a(aa),
    .b(bb),
    .d0(dd0),
    .d1(dd1),
    .d2(dd2),
    .d3(dd3));

initial begin
    aa=1'b0;
    bb=1'b0;
end

always aa=#400 ~aa;
always bb=#200 ~bb;

initial begin
    #800
    $finish;
end

endmodule
