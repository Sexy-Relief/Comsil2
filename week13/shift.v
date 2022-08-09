`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/02 14:59:52
// Design Name: 
// Module Name: shift
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

endmodule

module shift(
    input in,clk,
    output qq0,qq1,qq2,out
    );
wire q0,q1,q2,q3;
wire q0bar,q1bar,q2bar,q3bar;

dff df0(in,clk,q0,q0bar);
dff df1(q0,clk,q1,q1bar);
dff df2(q1,clk,q2,q2bar);
dff df3(q2,clk,q3,q3bar);
assign qq0=q0;
assign qq1=q1;
assign qq2=q2;
assign out=q3;
endmodule
