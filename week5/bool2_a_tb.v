`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/07 15:29:28
// Design Name: 
// Module Name: bool2_a_tb
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


module bool2_a_tb;
reg aa,bb,cc;
wire dd;

bool2_a u_bool2_a(
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