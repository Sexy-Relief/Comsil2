`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/02 15:02:04
// Design Name: 
// Module Name: updown_tb
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

module updown_tb;
reg ud,rst,clk;
wire ll0,ll1,ll2,ll3;
wire a,b,c,d,e,f,g,on;
updown u_updown(ud,rst,clk,ll0,ll1,ll2,ll3,a,b,c,d,e,f,g,on);
initial begin
ud=1'b0;
rst=1'b0;
clk=1'b1;
#700 rst=~rst;
end

always #500 ud=~ud;
always #25 clk=~clk;

initial begin
#1000
$finish;
end
endmodule
