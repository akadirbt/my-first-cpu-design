`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 11:22:04
// Design Name: 
// Module Name: cpu_top
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


module cpu_top(

    input logic clk,
    input logic reset,
    
    output logic [15:0] pc_out

    );
    
    logic [15:0] instruction;
    logic [3:0] op;
    logic [2:0] rd;
    logic [2:0] rs1;
    logic [2:0] rs2;
    logic reg_we;
    logic [15:0] rs1_data;
    logic [15:0] rs2_data;
    logic [15:0] alu_result;
    logic zero_flag;
    logic carry_flag;
    
    program_counter pc_inst (
    .clk        (clk),
    .reset      (reset),
    .branch     (1'b0),
    .branch_addr(16'b0),
    .pc_out     (pc_out)
    );

    instruction_memory instm_inst (
    .pc          (pc_out),
    .instruction (instruction)
    );    
    
    control_unit contu_inst (
    .instruction (instruction),
    .op     (op),
    .rd     (rd),
    .rs1    (rs1),
    .rs2    (rs2),
    .reg_we (reg_we)
    );
    
    register_file regf_inst(
    .clk   (clk),
    .we    (reg_we),
    .waddr (rd),
    .wdata (alu_result),
    .raddr (rs1),
    .rdata (rs1_data),
    .raddr2 (rs2),
    .rdata2 (rs2_data)
    );
    
    alu_16bit alu_inst (
    .A          (rs1_data),
    .B          (rs2_data),
    .op         (op),
    .result     (alu_result),
    .zero_flag  (zero_flag),
    .carry_flag (carry_flag)
    );
    
endmodule
