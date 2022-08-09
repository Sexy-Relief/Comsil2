`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 15:01:29
// Design Name: 
// Module Name: _2421
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


module _2421(
    input clk,rst,
    output z,qq3,qq2,qq1,qq0
    );
reg qq3,qq2,qq1,qq0;
reg outs;
wire reset;

assign reset=rst;
always @(reset==1) begin
    qq3=0;qq2=0;qq1=0;qq0=0;
    outs=0;
end
assign z=outs;
always @(negedge clk) begin
  if(!reset) begin
    if((qq3==1'b1)&&(qq2==1'b1)&&(qq1==1'b1)&&(qq0==1'b1)) begin
        qq3=1'b0;qq2=1'b0;qq1=1'b0;qq0=1'b0;
        outs=1'b1;
    end
    else if((qq3==1'b1)&&(qq2==1'b1)&&(qq1==1'b1)&&(qq0==1'b0)) begin
        qq3=1'b1;qq2=1'b1;qq1=1'b1;qq0=1'b1;
    end
    else if((qq3==1'b1)&&(qq2==1'b1)&&(qq1==1'b0)&&(qq0==1'b1)) begin
        qq3=1'b1;qq2=1'b1;qq1=1'b1;qq0=1'b0;
    end
    else if((qq3==1'b1)&&(qq2==1'b1)&&(qq1==1'b0)&&(qq0==1'b0)) begin
        qq3=1'b1;qq2=1'b1;qq1=1'b0;qq0=1'b1;
    end
    else if((qq3==1'b1)&&(qq2==1'b0)&&(qq1==1'b1)&&(qq0==1'b1)) begin
        qq3=1'b1;qq2=1'b1;qq1=1'b0;qq0=1'b0;
    end
    else if((qq3==1'b0)&&(qq2==1'b1)&&(qq1==1'b0)&&(qq0==1'b0)) begin
        qq3=1'b1;qq2=1'b0;qq1=1'b1;qq0=1'b1;
    end
    else if((qq3==1'b0)&&(qq2==1'b0)&&(qq1==1'b1)&&(qq0==1'b1)) begin
        qq3=1'b0;qq2=1'b1;qq1=1'b0;qq0=1'b0;
    end
    else if((qq3==1'b0)&&(qq2==1'b0)&&(qq1==1'b1)&&(qq0==1'b0)) begin
        qq3=1'b0;qq2=1'b0;qq1=1'b1;qq0=1'b1;
    end
    else if((qq3==1'b0)&&(qq2==1'b0)&&(qq1==1'b0)&&(qq0==1'b1)) begin
        qq3=1'b0;qq2=1'b0;qq1=1'b1;qq0=1'b0;
    end
    else if((qq3==1'b0)&&(qq2==1'b0)&&(qq1==1'b0)&&(qq0==1'b0)) begin
        qq3=1'b0;qq2=1'b0;qq1=1'b0;qq0=1'b1;
        outs=0;
    end
  end
end
endmodule
