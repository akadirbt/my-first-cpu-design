`timescale 1ns / 1ps
import cpu_pkg::*;
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 07:59:28
// Design Name: 
// Module Name: alu_16bit
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


module alu_16bit(

    input logic [15:0] A,
    input logic [15:0] B,
    input logic [3:0] op,
    output logic [15:0] result,
    output logic zero_flag,
    output logic carry_flag
    
    );
  
    logic [16:0] temp;
    
    always_comb begin   
        temp        = 17'b0;    // we need to add default values to avoid latch
        result      = 16'b0;
        carry_flag  = 1'b0;
                 
        case(op)
        
        OP_ADD: begin
            temp          = {1'b0, A} + {1'b0, B};   // {1'b0, B} concatenation: We add the bit 0 to the MSB of B.
            result        = temp[15:0];
            carry_flag    = temp[16];
        end
        
        OP_SUB:begin
            temp          = {1'b0, A} - {1'b0, B};
            result        = temp[15:0];
            carry_flag    = temp[16];
        end
        
        OP_AND:  result = A & B;
        OP_OR :  result = A | B;
        OP_XOR:  result = A ^ B;
        OP_NOT:  result = ~A;
        OP_SHL:  result = A << 1;
        OP_SHR:  result = A >> 1;
        OP_CMP:  result = A - B;
        default: result = 16'b0;
        endcase
    end    
    
    assign zero_flag = (result == 16'b0); // Zero flag: The result and 0 are constantly compared, and the values ​​0 and 1 are continuously updated thanks to the assign command. 

    
endmodule
