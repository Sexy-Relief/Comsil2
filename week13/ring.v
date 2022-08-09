`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/02 15:00:44
// Design Name: 
// Module Name: ring
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
module ring(
    input rst,clk,
    output qq0,qq1,qq2,out
    );
reg q0,q1,q2,q3;
wire q0bar,q1bar,q2bar,q3bar;

always @(negedge clk or posedge rst) begin
    if(rst) begin
    q3=0;q2=0;q1=0;q0=1;
    end
    else begin
    q3<=q2;
    q2<=q1;
    q1<=q0;
    q0<=q3;
    end
end

assign qq0=q0;
assign qq1=q1;
assign qq2=q2;
assign out=q3;
endmodule

