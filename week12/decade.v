`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 15:00:46
// Design Name: 
// Module Name: decade
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


module decade(
    input clk,rst,
    output z,q3,q2,q1,q0
    );
reg qq3,qq2,qq1,qq0;
reg outs;
wire reset;

assign reset=rst;
always @(reset==1) begin
    qq3=0;qq2=0;qq1=0;qq0=0;
    outs=0;
end
assign q3=qq3;
assign q2=qq2;
assign q1=qq1;
assign q0=qq0;
assign z=outs;
always @(negedge clk&&reset==0) begin
    if((qq3==1)&&(qq2==0)&&(qq1==0)&&(qq0==1)) begin
        qq3=0;qq2=0;qq1=0;qq0=0;
        outs=1;
    end
    else if((qq3==1)&&(qq2==0)&&(qq1==0)&&(qq0==0)) begin
        qq3=1;qq2=0;qq1=0;qq0=1;
    end
    else if((qq3==0)&&(qq2==1)&&(qq1==1)&&(qq0==1)) begin
        qq3=1;qq2=0;qq1=0;qq0=0;
    end
    else if((qq3==0)&&(qq2==1)&&(qq1==1)&&(qq0==0)) begin
        qq3=0;qq2=1;qq1=1;qq0=1;
    end
    else if((qq3==0)&&(qq2==1)&&(qq1==0)&&(qq0==1)) begin
        qq3=0;qq2=1;qq1=1;qq0=0;
    end
    else if((qq3==0)&&(qq2==1)&&(qq1==0)&&(qq0==0)) begin
        qq3=0;qq2=1;qq1=0;qq0=1;
    end
    else if((qq3==0)&&(qq2==0)&&(qq1==1)&&(qq0==1)) begin
        qq3=0;qq2=1;qq1=0;qq0=0;
    end
    else if((qq3==0)&&(qq2==0)&&(qq1==1)&&(qq0==0)) begin
        qq3=0;qq2=0;qq1=1;qq0=1;
    end
    else if((qq3==0)&&(qq2==0)&&(qq1==0)&&(qq0==1)) begin
        qq3=0;qq2=0;qq1=1;qq0=0;
    end
    else if((qq3==0)&&(qq2==0)&&(qq1==0)&&(qq0==0)) begin
        qq3=0;qq2=0;qq1=0;qq0=1;
        outs=0;
    end
end
endmodule
