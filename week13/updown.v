`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/02 15:01:51
// Design Name: 
// Module Name: updown
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
module updown(
    input ud,rst,clk,
    output ll0,ll1,ll2,ll3,
    output a,b,c,d,e,f,g,on
    );
reg [3:0] l;
initial l=4'b0000;
always @(negedge clk or posedge rst) begin
    if(rst) begin
        l[0]=0;l[1]=0;l[2]=0;l[3]=0;
    end
    else if(ud) begin
        l=l+1;
    end
    else if(!ud) begin
        l=l-1;
    end
end
assign ll0=l[0];
assign ll1=l[1];
assign ll2=l[2];
assign ll3=l[3];
assign a=0;
assign b=1;
assign c=1;
assign d=1;
assign e=1;
assign f=ud;
assign g=~ud;
assign on=1;
endmodule