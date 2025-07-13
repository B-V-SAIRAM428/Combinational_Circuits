`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2024 23:07:58
// Design Name: 
// Module Name: encoder_8x3
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


module encoder_8x3(
    input [7:0] d,
    output [2:0]a
    );
assign a[2]=d[4]+d[5]+d[6]+d[7];
assign a[1]=d[2]+d[3]+d[6]+d[7];
assign a[0]=d[1]+d[3]+d[5]+d[7];
endmodule
