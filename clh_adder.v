`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2024 14:35:51
// Design Name: 
// Module Name: clh_adder
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


/*module clh_adder(
    input [3:0] a,    // First 4-bit operand
    input [3:0] b,    // Second 4-bit operand
    input cin,        // Input carry
    output [3:0] sum, // Sum output
    output cout       // Final carry out
);
    wire [3:0] p;     // Propagate signals
    wire [3:0] g;     // Generate signals
    wire [3:0] c;     // Carry signals

    // Propagate (p) and Generate (g) signals
    assign p = a ^ b; // p[i] = a[i] ^ b[i]
    assign g = a & b; // g[i] = a[i] & b[i]

    // Carry calculations
    assign c[0] = cin;                      // First carry input
    assign c[1] = g[0] | (p[0] & c[0]);     // c1 = g0 + (p0 & c0)
    assign c[2] = g[1] | (p[1] & c[1]);     // c2 = g1 + (p1 & c1)
    assign c[3] = g[2] | (p[2] & c[2]);     // c3 = g2 + (p2 & c2)
    assign cout = g[3] | (p[3] & c[3]);     // Final carry out: cout = g3 + (p3 & c3)

    // Sum calculations
    assign sum = p ^ c; // sum[i] = p[i] ^ c[i]
endmodule*/


module clh_adder(
        input [3:0] a,
        input [3:0] b,
        input cin,
        output cout,
        output wire [3:0] sum
           );
wire [3:0]p;
wire [3:0]g;
wire [3:0]c;
assign p[0]=a[0] ^ b[0];
assign g[0]=a[0] & b[0];
assign p[1]=a[1] ^ b[1];
assign g[1]=a[1] & b[1];
assign p[2]=a[2] ^ b[2];
assign g[2]=a[2] & b[2];
assign p[3]=a[3] ^ b[3];
assign g[3]=a[3] & b[3];
assign sum[0] = p[0] ^ cin;
assign c[0] = g[0] | (p[0] & cin);
assign sum[1] = p[1] ^ c[0];
assign c[1] = g[1] | (p[1] & c[0]);
assign sum[2] = p[2] ^ c[1];
assign c[2] = g[2] | (p[2] & c[1]);
assign sum[3] = p[3] ^ c[2];
assign cout = g[3] | (p[3] & c[2]);
endmodule