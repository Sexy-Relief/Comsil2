`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/14 13:09:00
// Design Name: 
// Module Name: halfsub_tb
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


module halfsub_tb;
reg aa,bb;
wire diff,borrow;

halfsub u_halfsub(
    .a(aa),
    .b(bb),
    .D(diff),
    .B(borrow));

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
