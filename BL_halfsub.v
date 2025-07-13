`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2024 21:53:58
// Design Name: 
// Module Name: BL_halfsub
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


module BL_halfsub(
    input clk,
    input rst,
    input a,
    input b,
    output reg d,
    output reg bout
    );
always@(posedge(clk) || rst) begin 
if (rst) begin
    d=0;
    bout=0;
end else begin
    d=a^b;
    bout=(~a)&b;
end 
end
endmodule
