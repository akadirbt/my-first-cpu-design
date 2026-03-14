`timescale 1ns / 1ps
import cpu_pkg::*;
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 10:49:02
// Design Name: 
// Module Name: control_unit
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


module control_unit(

    input logic   clk,
    input logic  [15:0] instruction,
    
    output logic [3:0] op,
    output logic [2:0] rd,
    output logic [2:0] rs1,
    output logic [2:0] rs2,
    output logic reg_we
    
    );
    
    always_comb begin
    //[15:12] [11:9] [8:6] [5:3] [2:0]
    //op      rd     rs1    rs2  reserved 
    op  = instruction[15:12];
    rd  = instruction[11:9];
    rs1 = instruction[8:6];
    rs2 = instruction[5:3];
    
    if (op == OP_CMP)
        reg_we = 0;
    else
        reg_we = 1;
 
    end  
endmodule
