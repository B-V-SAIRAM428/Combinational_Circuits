`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2024 19:55:06
// Design Name: 
// Module Name: BL_halfadd
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


module BL_halfadd(
    input clk,
    input rst,
    input a,
    input b,
    output reg s,
    output reg c
    );
always@(posedge(clk) || rst) begin
if (rst)  begin
    s=0;
    c=0;
end else begin
    s=a^b;
    c=a&b;
end
end
endmodule
