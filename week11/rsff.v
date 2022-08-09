`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/18 15:40:11
// Design Name: 
// Module Name: rsff
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


module rsff(
    input r,s,clk,
    output q,qbar
    );
reg rr,ss;
wire qq,qqbar;
always @(negedge clk) begin
rr=r;
ss=s;
end

assign qq=~(qqbar|rr);
assign qqbar=~(qq|ss);
assign q=qq;
assign qbar=qqbar;
endmodule
