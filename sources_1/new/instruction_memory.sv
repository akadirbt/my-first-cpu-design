`timescale 1ns / 1ps
import cpu_pkg::*;
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 10:03:25
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(

    input logic   [15:0] pc,
    output logic  [15:0] instruction

    );
    logic [15:0] mem [0:63];
    assign instruction = mem[pc];
    
    initial begin
    
                //        [15:12] [11:9] [8:6] [5:3] [2:0]
                //        op      rd    rs1   rs2   reserved
                mem[0] = {OP_ADD, 3'd1, 3'd2, 3'd3, 3'd0}; // ADD R1, R2, R3  →  R1 = R2 + R3
                mem[1] = {OP_SUB, 3'd2, 3'd3, 3'd4, 3'd0}; // SUB R2, R3, R4  →  R2 = R3 - R4
                mem[2] = {OP_AND, 3'd3, 3'd4, 3'd5, 3'd0}; // AND R3, R4, R5  →  R3 = R4 & R5
                mem[3] = {OP_OR,  3'd6, 3'd1, 3'd2, 3'd0}; // OR  R6, R1, R2  →  R6 = R1 | R2
                mem[4] = {OP_XOR, 3'd5, 3'd2, 3'd3, 3'd0}; // XOR R5, R2, R3  →  R5 = R2 ^ R3
                mem[5] = {OP_NOT, 3'd7, 3'd1, 3'd0, 3'd0}; // NOT R7, R1      →  R7 = ~R1
                mem[6] = {OP_SHL, 3'd1, 3'd2, 3'd3, 3'd0}; // SHL R1, R2, R3  →  R1 = R2 << R3
                mem[7] = {OP_SHR, 3'd2, 3'd3, 3'd4, 3'd0}; // SHR R2, R3, R4  →  R2 = R3 >> R4
                mem[8] = {OP_CMP, 3'd7, 3'd1, 3'd2, 3'd0}; // CMP R7, R1, R2  →  R7 = (R1==R2)?1:0
    end
endmodule
