`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2024 10:36:11
// Design Name: 
// Module Name: bcd_adder
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


module bcd_adder(
        input [3:0] a,
        input [3:0] b,
        input cin,
        output reg  [3:0] sum,
        output reg  cout
    );
reg [4:0] in_sum;
always @(*) begin
in_sum= a + b + cin;
if (in_sum>9) begin
    sum=in_sum+4'd6;
    cout=1'b1;
end else begin
    sum=in_sum;
    cout=1'b0;
end
end
/*assign in_sum= a + b + cin;
assign sum=in_sum + (in_sum >9? 4'd6 :4'd0);
assign cout = in_sum>9 ;*/
endmodule
