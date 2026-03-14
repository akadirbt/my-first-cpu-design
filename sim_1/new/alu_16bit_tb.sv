`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 08:55:04
// Design Name: 
// Module Name: alu_16bit_tb
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


module alu_16bit_tb;

    logic [15:0] A;
    logic [15:0] B;
    logic [3:0] op;
    logic [15:0] result;
    logic zero_flag;
    logic carry_flag;
    
    localparam OP_ADD   = 4'b0000;
    localparam OP_SUB   = 4'b0001;
    localparam OP_AND   = 4'b0010;
    localparam OP_OR    = 4'b0011;
    localparam OP_XOR   = 4'b0100;
    localparam OP_NOT   = 4'b0101;
    localparam OP_SHL   = 4'b0110;
    localparam OP_SHR   = 4'b0111;
    localparam OP_CMP   = 4'b1000;
    
    alu_16bit dut(
    
    .A (A),
    .B (B),
    .op (op),
    .result (result),
    .zero_flag (zero_flag),
    .carry_flag (carry_flag)  
    
    );
    
    initial begin
        op = OP_ADD; 
        A  = 16'd45;
        B  = 16'd75;
        #100;
        
        op = OP_SUB;
        A  = 16'd127;
        B  = 16'd420;
        #100;
        
        op = OP_AND;
        A  = 16'd455;
        B  = 16'd256;
        #100;
        
        op = OP_OR;
        A  = 16'd247;
        B  = 16'd624;
        #100;
        
        op = OP_XOR;
        A  = 16'd1024;
        B  = 16'd252;
        #100;
        
        op = OP_NOT;
        A  = 16'd85;
        #100;
        
        op = OP_SHL;
        A  = 16'd122;
        #100;
        
        op = OP_SHR;
        A  = 16'd444;
        #100;        

        op = OP_CMP;
        A  = 16'd743;
        B  = 16'd650;
        #100;
                
        $finish;
        
    end
    
endmodule
