`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 16:35:36
// Design Name: 
// Module Name: fullsub4
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


module fullsub(
    input a,b,prevb,
    output B,D
    );
assign B=~a&b|prevb&~(a^b);
assign D=a^b^prevb;
endmodule

module fullsub4(
    input [3:0] AA,
    input [3:0] BB,
    input bb0,
    output [3:0] DD,
    output bb4
    );
    wire bb1,bb2,bb3;
    
    fullsub fas0 (AA[0],BB[0],bb0,bb1,DD[0]);
    fullsub fas1 (AA[1],BB[1],bb1,bb2,DD[1]);
    fullsub fas2 (AA[2],BB[2],bb2,bb3,DD[2]);
    fullsub fas3 (AA[3],BB[3],bb3,bb4,DD[3]);
endmodule
