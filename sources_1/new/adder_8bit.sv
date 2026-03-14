`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2026 06:05:05
// Design Name: 
// Module Name: adder_8bit
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


module adder_16bit(
    input  logic [15:0] A,
    input  logic [15:0] B,
    input  logic       sub,
    output logic [16:0] sum
);
        
assign sum = sub ? (A + (~B) + 1) : (A + B);

endmodule
