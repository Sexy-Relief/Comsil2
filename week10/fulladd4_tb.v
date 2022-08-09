`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 15:00:14
// Design Name: 
// Module Name: fulladd4_tb
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


module fulladd4_tb;
    reg [3:0] A;
    reg [3:0] B;
    reg C0;
    wire [3:0] S;
    wire C4;
    
    fulladd4 fatb(A,B,C0,S,C4);    
    initial begin
     A = 4'b0011;B=4'b0011;C0 = 1'b0; #100;
     A = 4'b1011;B=4'b0111;C0 = 1'b0; #100;
     A = 4'b1001;B=4'b1001;C0 = 1'b0; #100;
     A = 4'b1111;B=4'b1111;C0 = 1'b0; #100;
     A = 4'b0011;B=4'b0011;C0 = 1'b1; #100;
     A = 4'b1011;B=4'b0111;C0 = 1'b1; #100;
     A = 4'b1001;B=4'b1001;C0 = 1'b1; #100;
     A = 4'b1111;B=4'b1111;C0 = 1'b1; #100;
     end
    
    initial begin
     #800
     $finish;
    end
endmodule

