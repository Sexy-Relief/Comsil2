`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/14 13:09:00
// Design Name: 
// Module Name: halfadd_tb
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


module halfadd_tb;
reg aa,bb;
wire sum,cout;

halfadd u_halfadd(
    .a(aa),
    .b(bb),
    .s(sum),
    .c(cout));

initial begin
    aa=1'b0;
    bb=1'b0;
end

always aa= #200 ~aa;
always bb= #100 ~bb;

initial begin
    #400
    $finish;
end
endmodule
