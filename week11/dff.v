`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/18 15:43:11
// Design Name: 
// Module Name: dff
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


module dff(
    input d,clk,
    output q,qbar
    );
reg rr,ss;
wire qq,qqbar;

always @(negedge clk) begin
    rr=~d;
    ss=d;
end

assign qq=~(qqbar|rr);
assign qqbar=~(qq|ss);
assign q=qq;
assign qbar=qqbar;

initial begin
    #625
    $finish;
end
endmodule
