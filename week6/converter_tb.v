`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/14 13:09:00
// Design Name: 
// Module Name: converter_tb
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


module converter_tb;
reg aa,bb,cc,dd;
wire xx1,xx2,xx3,xx4;

converter u_converter(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .x1(xx1),
    .x2(xx2),
    .x3(xx3),
    .x4(xx4));
    
initial begin
    aa=1'b0;
    bb=1'b0;
    cc=1'b0;
    dd=1'b0;
end

always aa= #400 ~aa;
always bb= #200 ~bb;
always cc= #100 ~cc;
always dd= #50 ~dd;

initial begin
    #800
    $finish;
end

endmodule
