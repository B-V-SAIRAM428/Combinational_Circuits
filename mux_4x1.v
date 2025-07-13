`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2024 18:37:21
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(
    input d0,d1,d2,d3,
    input [1:0]s,
    output wire  x
    );
wire y0,y1;
mux_2x1 m1 (.d0(d0),.d1(d1),.s(s[0]),.x(y0)); 
mux_2x1 m2 (.d0(d2),.d1(d3),.s(s[0]),.x(y1));
mux_2x1 m3 (.d0(y0),.d1(y1),.s(s[1]),.x(x));
endmodule
