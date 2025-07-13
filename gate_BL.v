`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2024 11:56:28
// Design Name: 
// Module Name: gate_BL
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


module gate_BL(
    input clk,
    input a,
    input b,
    input [2:0]fn,
    output reg y
    );
always@(posedge(clk)) begin
if (fn==3'b000) begin
    y=a&b;
end else if(fn==3'b001) begin
    y=a|b;
end else if(fn==3'b010) begin
    y=~b;
end else if(fn==3'b011) begin
    y=~(a&b);
end else if(fn==3'b100) begin
    y=~(a|b);
end else if(fn==3'b101) begin
    y=a^b;
end else if(fn==3'b110) begin
    y=~(a^b);
end
end
endmodule
