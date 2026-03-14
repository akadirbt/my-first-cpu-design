`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2026 06:18:38
// Design Name: 
// Module Name: adder_8bit_tb
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


module adder_8bit_tb;
    
    logic [7:0] A;
    logic [7:0] B;
    logic [8:0] sum;
    logic sub;
    
    adder_8bit dut(
    .A (A),
    .B (B),
    .sum (sum),
    .sub (sub)
    );


initial begin

    A = 8'b10001101;
    B = 8'b11001011;
    sub = 0; 
    #10;
    
    A = 8'b0;
    B = 8'b0;
    sub = 1;
    #10;
    
    A = 8'b11111111;
    B = 8'b11111111;
    sub = 1;
    #10;
    
    A = 8'd10;
    B = 8'd3;
    sub = 1;
    #10;
    $finish;
end

endmodule