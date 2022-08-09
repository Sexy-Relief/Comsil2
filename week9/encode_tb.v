`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 15:43:39
// Design Name: 
// Module Name: encode_tb
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


module encode_tb;
reg aa,bb,cc,dd;
wire ee0,ee1,nrnr;

encode u_encode(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .e0(ee0),
    .e1(ee1),
    .nr(nrnr));

/*initial begin
    aa=1'b0;
    bb=1'b0;
    cc=1'b0;
    dd=1'b0;
end*/

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
