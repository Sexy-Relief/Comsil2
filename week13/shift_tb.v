`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/02 15:00:06
// Design Name: 
// Module Name: shift_tb
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


module shift_tb;
reg in,clk;
wire qq0,qq1,qq2,out;
shift u_shift(in,clk,qq0,qq1,qq2,out);

initial begin
    in=1'b0;
    clk=1'b1;
end
always #50 clk=~clk;
always #30 in=~in;

initial begin
    #1000
    $finish;
end

endmodule
