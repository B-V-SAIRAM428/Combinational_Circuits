`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2024 22:47:20
// Design Name: 
// Module Name: mux_8x1
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


module mux_8x1(
    input d0,d1,d2,d3,d4,d5,d6,d7,
    input [2:0]s,
    output x
    );
wire y0,y1,y2,y3;
wire v0,v1;
mux_2x1 m1(.d0(d0),.d1(d1),.s(s[0]),.x(y0));
mux_2x1 m2(.d0(d2),.d1(d3),.s(s[0]),.x(y1));
mux_2x1 m3(.d0(d5),.d1(d4),.s(s[0]),.x(y2));
mux_2x1 m4(.d0(d6),.d1(d7),.s(s[0]),.x(y3));
mux_2x1 m5(.d0(y0),.d1(y1),.s(s[1]),.x(v0));
mux_2x1 m6(.d0(y2),.d1(y3),.s(s[1]),.x(v1));
mux_2x1 m7(.d0(v0),.d1(v1),.s(s[2]),.x(x));
endmodule
