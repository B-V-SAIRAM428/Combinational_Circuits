`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2024 22:51:56
// Design Name: 
// Module Name: BL_fullsub
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


module BL_fullsub(
    input clk,
    input rst,
    input a,
    input b,
    input bin,
    output reg d,
    output reg bout
    );
reg a_not,out1,out2,out3,out4;
always@(posedge(clk) || rst) begin
if (rst==1) begin 
    d=0;
    bout=0;
end else begin
     a_not=~a;
     out1=a^b;
    out2=a_not&b;
    d=out1^bin;
    out3=~out1;
    out4=out3&bin;
    bout=out2|out4;
end
end
endmodule
