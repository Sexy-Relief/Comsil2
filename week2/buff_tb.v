`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/09 16:24:21
// Design Name: 20181650 ¾ÈµµÇö
// Module Name: buff_tb
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


module buff_tb;

reg bb;
wire x;

buff u_buff (
.b (bb ),
.x (x ) );

initial bb = 1'b0;
always bb= #100 ~bb;

initial begin
    #1000
    $finish;
end

endmodule
