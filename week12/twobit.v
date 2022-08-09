`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 15:00:10
// Design Name: 
// Module Name: twobit
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


module twobit(
    input x,clk,rst,
    output z,qq0,qq1
    );
reg r0,s0,r1,s1;
reg outs;
wire reset;
wire q0,qbar0,q1,qbar1;

assign reset=rst;
always @(reset==1) begin
    r0=1;s0=0;r1=1;s1=0;
end

//SR FF ±¸Çö    
assign q0=~(qbar0|r0);
assign qbar0=~(q0|s0);
assign q1=~(qbar1|r1);
assign qbar1=~(q1|s1);

assign qq0=q0;
assign qq1=q1;


always @(negedge clk&&!reset) begin
outs=x&q0&q1;
s0=x&~q0&q1;
r0=x&q0&q1;
s1=x&~q1;
r1=x&q1;
end
assign z=outs;

endmodule
