`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 15:45:51
// Design Name: 
// Module Name: bcd_tb
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


module bcd_tb;
reg aa3,aa2,aa1,aa0;
wire oo1,oo2,oo3,oo4,oo5,oo6,oo7,oo8,oo9;

bcd u_bcd(
    .a3(aa3),
    .a2(aa2),
    .a1(aa1),
    .a0(aa0),
    .o1(oo1),
    .o2(oo2),
    .o3(oo3),
    .o4(oo4),
    .o5(oo5),
    .o6(oo6),
    .o7(oo7),
    .o8(oo8),
    .o9(oo9));

initial begin
  aa3=1'b0;
  aa2=1'b0;
  aa1=1'b0;
  aa0=1'b0;
end

always aa3=#400 ~aa3;
always aa2=#200 ~aa2;
always aa1=#100 ~aa1;
always aa0=#50 ~aa0;


initial begin
    #800
    $finish;
end

endmodule