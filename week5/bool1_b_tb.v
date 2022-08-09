`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/07 15:29:28
// Design Name: 
// Module Name: bool1_b_tb
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


module bool1_b_tb;
reg aa,bb,cc;
wire dd;

bool1_b u_bool1_b(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd));
    
initial begin
    aa=1'b0;
    bb=1'b0;
    cc=1'b0;
end

always aa=#400 ~aa;
always bb=#200 ~bb;
always cc=#100 ~cc;

initial begin
    #800
    $finish;
end
endmodule
