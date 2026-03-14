`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 10:39:47
// Design Name: 
// Module Name: instruction_memory_tb
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


module instruction_memory_tb;

    logic [15:0] pc;
    logic [15:0] instruction;

    instruction_memory dut(
    
    .pc           (pc),
    .instruction  (instruction)
    
    );

    initial begin
    
    pc = 16'd1;
    #100;
    
    pc = 16'd2;
    #100;
    
    pc = 16'd3;
    #100
    
    $finish;
    
    end
endmodule
