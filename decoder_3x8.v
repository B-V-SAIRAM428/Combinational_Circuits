`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2024 18:39:59
// Design Name: 
// Module Name: decoder_3x8
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


module decoder_3x8(
            input [2:0]s,
            output reg [7:0]o
    );
always @(s) begin
case(s)
    3'b000: o=8'b00000001;
    3'b001: o=8'b00000010;
    3'b010: o=8'b00000100;
    3'b011: o=8'b00001000;
    3'b100: o=8'b00010000;
    3'b101: o=8'b00100000;
    3'b110: o=8'b01000000;
    3'b111: o=8'b10000000;
endcase
end
endmodule
