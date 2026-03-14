`timescale 1ns / 1ps
import cpu_pkg::*;
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 11:05:34
// Design Name: 
// Module Name: control_unit_tb
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


module control_unit_tb;
    
     logic  clk;
     logic [15:0] instruction;
     logic [3:0] op;
     logic [2:0] rd;
     logic [2:0] rs1;
     logic [2:0] rs2;
     logic reg_we;
     
     control_unit dut(
     
     .clk (clk),
     .instruction (instruction),
     .op (op),
     .rd (rd),
     .rs1 (rs1),
     .rs2 (rs2),
     .reg_we (reg_we)
     
     );
     
     initial clk = 0;
     always #50 clk = ~clk;
     
     initial begin
     
     instruction = {OP_ADD, 3'd1, 3'd2, 3'd3, 3'd0};
     #100;
     
     instruction = {OP_CMP, 3'd7, 3'd1, 3'd2, 3'd0};
     #100;
     
     
     
     $finish;
     end
endmodule
