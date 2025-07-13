`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2024 18:53:34
// Design Name: 
// Module Name: de-mux_1x4
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

//module demu1x2( input s, input din, output y0, y1);
//    assign y0=(s==0)?din:0;
//    assign y1=(s==1)?din:0;
//endmodule
module de_mux_1x4(
    input din,
    input [1:0]s,
    output o1,
    output o2,
    output o3,
    output o4
    );
wire y0,y1;
demux_1x2 m1 (.din(din), .s(s[1]), .y0(y0), .y1(y1));
demux_1x2 m2(.din(y0),.s(s[0]),.y0(o1),.y1(o2));
demux_1x2 m3(.din(y1),.s(s[0]),.y0(o3),.y1(o4));
endmodule
