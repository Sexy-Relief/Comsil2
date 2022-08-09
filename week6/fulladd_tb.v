`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/14 13:09:00
// Design Name: 
// Module Name: fulladd_tb
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


module fulladd_tb;
reg aa,bb,cc;
wire sum,cout;

fulladd u_fulladd(
    .a(aa),
    .b(bb),
    .cin(cc),
    
    .s(sum),
    .c(cout));

initial begin
    aa=1'b0;
    bb=1'b0;
    cc=1'b0;
end

always aa= #200 ~aa;
always bb= #100 ~bb;
always cc= #50 ~cc;

initial begin
    #400
    $finish;
end
endmodule