`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 16:35:48
// Design Name: 
// Module Name: fullsub4_tb
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


module fullsub4_tb;
    reg [3:0] AA;
    reg [3:0] BB;
    reg bb0;
    wire [3:0] DD;
    wire bb4;
    
    fullsub4 fatb(AA,BB,bb0,DD,bb4);    
    initial begin
     AA = 4'b0011;BB=4'b0011;bb0 = 1'b0; #100;
     AA = 4'b1011;BB=4'b0111;bb0 = 1'b0; #100;
     AA = 4'b1001;BB=4'b1101;bb0 = 1'b0; #100;
     AA = 4'b1111;BB=4'b1011;bb0 = 1'b0; #100;
     AA = 4'b0011;BB=4'b0011;bb0 = 1'b1; #100;
     AA = 4'b1011;BB=4'b0111;bb0 = 1'b1; #100;
     AA = 4'b1001;BB=4'b1101;bb0 = 1'b1; #100;
     AA = 4'b1111;BB=4'b1011;bb0 = 1'b1; #100;
     end
endmodule
