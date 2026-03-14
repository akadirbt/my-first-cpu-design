`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 09:34:12
// Design Name: 
// Module Name: program_counter
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


module program_counter(

    input  logic clk,
    input  logic reset,
    input  logic branch,
    input  logic [15:0] branch_addr,
    output logic [15:0] pc_out
   
    );
    
    always_ff@(posedge clk) begin
        if (reset)
            pc_out <= 0;
        else if (branch)
            pc_out <= branch_addr;
        else
            pc_out <= pc_out + 1;     
    end
    
endmodule
