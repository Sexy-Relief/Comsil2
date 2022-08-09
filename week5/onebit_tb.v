`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/07 15:29:28
// Design Name: 
// Module Name: onebit_tb
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


module onebit_tb;
reg aa,bb;
wire faa,fbb,fcc,fdd;

onebit u_onebit(
    .a(aa),
    .b(bb),
    .fa(faa),
    .fb(fbb),
    .fc(fcc),
    .fd(fdd));
    
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
