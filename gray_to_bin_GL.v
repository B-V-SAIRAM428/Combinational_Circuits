`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2024 18:25:24
// Design Name: 
// Module Name: gray_to_bin_GL
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


module gray_to_bin_GL(
    input [3:0] g,
    output [3:0] b
    );
xor (b[3],g[3]);
xor (b[2],g[3],g[2]);
xor (b[1],g[2],g[1]);
xor (b[0],g[1],g[0]);
endmodule
