`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2024 18:21:10
// Design Name: 
// Module Name: decoder_2x4
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


module decoder_2x4(
        input [1:0]s,
        output reg [4:0]o
    );
always @(s) begin 
    case(s)
    2'b00: o=4'b0001;
    2'b01: o=4'b0010;
    2'b10: o=4'b0100;
    2'b11: o=4'b1000;
endcase
end
endmodule
