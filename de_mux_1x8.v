`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2024 13:54:18
// Design Name: 
// Module Name: de_mux_1x8
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

module de_mux__1x2( input din, input s, output y0, y1);
    assign y0=(s==0)?din:0;
    assign y1=(s==1)?din:0;
endmodule
module de_mux_1x8(
    input din,
    input [2:0]s,
    output o0,
    output o1,
    output o2,
    output o3,
    output o4,   
    output o5,
    output o6,
    output o7
    );
wire y0,y1;
wire x0,x1,x2,x3;
de_mux__1x2 m1(.din(din),.s(s[2]),.y0(y0),.y1(y1));
de_mux__1x2 m2(.din(y0),.s(s[1]),.y0(x0),.y1(x1));
de_mux__1x2 m3(.din(y1),.s(s[1]),.y0(x2),.y1(x3));
de_mux__1x2 m4(.din(x0),.s(s[0]),.y0(o0),.y1(o1));
de_mux__1x2 m5(.din(x1),.s(s[0]),.y0(o2),.y1(o3));
de_mux__1x2 m6(.din(x2),.s(s[0]),.y0(o4),.y1(o5));
de_mux__1x2 m7(.din(x3),.s(s[0]),.y0(o6),.y1(o7));
endmodule
