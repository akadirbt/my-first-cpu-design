`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 10:36:40
// Design Name: 
// Module Name: cpu_pkg
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


package cpu_pkg;

    localparam OP_ADD   = 4'b0000;
    localparam OP_SUB   = 4'b0001;
    localparam OP_AND   = 4'b0010;
    localparam OP_OR    = 4'b0011;
    localparam OP_XOR   = 4'b0100;
    localparam OP_NOT   = 4'b0101;
    localparam OP_SHL   = 4'b0110;
    localparam OP_SHR   = 4'b0111;
    localparam OP_CMP   = 4'b1000;

endpackage