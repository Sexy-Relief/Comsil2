`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 15:25:23
// Design Name: 
// Module Name: bcdadd4_tb
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


module bcdadd4_tb;
    reg [3:0] A;
    reg [3:0] B;
    reg C0;
    wire [3:0] S;
    wire Carry;
bcdadd4 u_bcdadd4(A,B,C0,S,Carry);

initial begin
     A = 4'b0011;B=4'b0011;C0 = 1'b0; #100;
     A = 4'b0011;B=4'b0111;C0 = 1'b0; #100;
     A = 4'b1001;B=4'b1001;C0 = 1'b0; #100;
     A = 4'b1000;B=4'b0110;C0 = 1'b0; #100;
     A = 4'b0011;B=4'b0011;C0 = 1'b1; #100;
     A = 4'b0011;B=4'b0111;C0 = 1'b1; #100;
     A = 4'b1001;B=4'b1001;C0 = 1'b1; #100;
     A = 4'b1000;B=4'b0110;C0 = 1'b1; #100;
end
endmodule