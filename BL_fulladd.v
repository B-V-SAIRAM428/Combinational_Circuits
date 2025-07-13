`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2024 20:59:21
// Design Name: 
// Module Name: BL_fulladd
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


module BL_fulladd(
    input clk,
    input rst,
    input a,
    input b,
    input cin,
    output reg s,
    output reg cout
    );
reg out1,out2,out3;
always@(posedge(clk) || rst) begin 
if (rst) begin
    s=0;
    cout=0;
end else begin
    out1=a^b;
    out2=a&b;
    s=out1^cin;
    out3=out1&cin;
    cout=out2|out3;
end
end
endmodule
