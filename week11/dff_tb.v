`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/18 15:43:30
// Design Name: 
// Module Name: dff_tb
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



module dff_tb;
reg d,clk;
wire q,qbar;
dff u_dff(d,clk,q,qbar);

initial clk=1'b1;
always #50 clk=~clk;
initial begin
    d=1'b0;#225;
    d=1'b1;#100;
    d=1'b0;#100;
    d=1'b1;#200;
end
initial begin
    #625
    $finish;
end
endmodule

