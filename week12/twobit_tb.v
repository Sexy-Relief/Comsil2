`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 15:00:25
// Design Name: 
// Module Name: twobit_tb
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


module twobit_tb;

reg x,clk,rst;
wire z,qq0,qq1;
twobit u_twobit(x,clk,rst,z,qq0,qq1);

initial begin
    rst=1'b1;
    x=1'b1;
    clk=1'b1;
    #10;rst=~rst;
end
always #25 clk=~clk;
//always #100 rst=~rst;
initial begin
 #625
 $finish;
end
endmodule

