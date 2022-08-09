`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/02 15:00:54
// Design Name: 
// Module Name: ring_tb
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


module ring_tb;
reg rst,clk;
wire qq0,qq1,qq2,out;
ring u_ring(rst,clk,qq0,qq1,qq2,out);

initial begin
    rst=1'b1;
    clk=1'b1;
    #25; rst=~rst;
end
always #750 rst=~rst;
always #50 clk=~clk;

initial begin
    #1000
    $finish;
end

endmodule

