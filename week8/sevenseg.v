`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/27 19:13:03
// Design Name: 
// Module Name: sevenseg
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


module sevenseg(
    input A,B,C,D,
    output a,b,c,d,e,f,g,dp,onoff
    );
assign a=~B&~D|A&~B&~C|A&~D|B&C|~A&C|~A&B&D;
assign b=~B&~D|~A&~B|~A&~C&~D|~A&C&D|A&~C&D;
assign c=A&~B|~A&B|~C&D|~A&~C|~A&D;
assign d=A&~C&~D|B&~C&D|B&C&~D|~B&C&D|~A&~B&~D;
assign e=~B&~D|A&B|A&C|C&~D;
assign f=~C&~D|A&~B|A&C|B&~D|~A&B&~C;
assign g=A&~B|A&D|C&~D|~B&C|~A&B&~C;
assign dp=1;
assign onoff=a|b|c|d|e|f|g|dp;
endmodule
