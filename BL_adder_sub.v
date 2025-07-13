`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2024 14:36:35
// Design Name: 
// Module Name: BL_adder_sub
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


module BL_adder_sub(
    input clk,
    input rst,
    input [3:0]a,
    input [3:0]b,
    input cin,
    output reg [3:0]s,
    output reg [3:0]c
    );
reg [3:0]v;
always@(posedge(clk) || rst || cin) begin
if (rst) begin
    s=0;
    c=0;
end else if (cin==0) begin
 s[0]=(a[0]^b[0])^cin;
 c[0]= (a[0]&b[0]) | (a[0]&cin) | (b[0]&cin);
 s[1]=(a[1]^b[1])^c[0];
 c[1]= (a[1]&b[1]) | (a[1]&c[0]) | (b[1]&c[0]);
 s[2]=(a[2]^b[2])^c[1];
 c[2]= (a[2]&b[2]) | (a[2]&c[1]) | (b[2]&c[1]);
 s[3]=(a[3]^b[3])^c[2];
 c[3]= (a[3]&b[3]) | (a[3]&c[2]) | (b[3]&c[2]);
end else if (cin==1) begin
 s[0]=(a[0]^~b[0])^cin;
 c[0]= (a[0]&~b[0]) | (a[0]&cin) | (~b[0]&cin);
 s[1]=(a[1]^~b[1])^c[0];
 c[1]= (a[1]&~b[1]) | (a[1]&c[0]) | (~b[1]&c[0]);
 s[2]=(a[2]^~b[2])^c[1];
 c[2]= (a[2]&~b[2]) | (a[2]&c[1]) | (~b[2]&c[1]);
 s[3]=(a[3]^~b[3])^c[2];
 c[3]= (a[3]&~b[3]) | (a[3]&c[2]) | (~b[3]&c[2]);
end 
end
endmodule

