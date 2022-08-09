`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/18 15:40:25
// Design Name: 
// Module Name: rsff_tb
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


module rsff_tb;
reg r,s,clk;
wire q,qbar;
rsff u_rsff(r,s,clk,q,qbar);

initial clk=1'b1;
always #50 clk=~clk;
initial begin
    r=1'b0;s=1'b1;#125;
    r=1'b0;s=1'b0;#100;
    r=1'b1;s=1'b0;#100;
    r=1'b0;s=1'b0;#100;
    r=1'b1;s=1'b0;#100;
    r=1'b1;s=1'b1;#100;
end
initial begin
    #625
    $finish;
end
endmodule
