`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 07:23:30
// Design Name: 
// Module Name: adder_16bit_tb
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


module adder_16bit_tb;

    logic [15:0] A;
    logic [15:0] B;
    logic [16:0] sum;
    logic        sub;

adder_16bit dut(
    
    .A      (A),
    .B      (B),
    .sum    (sum),
    .sub    (sub)
);

initial begin

    A = 16'd15;
    B = 16'd27;
    sub = 0;
    #100;
    
    A = 16'd125;
    B = 16'd544;
    sub = 1;
    #100;
    $finish;
    
end
endmodule
