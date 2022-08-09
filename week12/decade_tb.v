`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 15:01:04
// Design Name: 
// Module Name: decade_tb
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


module decade_tb;
reg clk,rst;
wire z,q3,q2,q1,q0;
decade u_decade(clk,rst,z,q3,q2,q1,q0);

initial begin
    clk=1'b1;
    rst=1'b1;
end
always #25 clk=~clk;
always #400 rst=~rst;
initial begin
    #1000
    $finish;
end
endmodule
