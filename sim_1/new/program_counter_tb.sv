`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 09:47:46
// Design Name: 
// Module Name: program_counter_tb
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


module program_counter_tb;

    logic clk;
    logic reset;
    logic branch;
    logic [15:0] branch_addr;
    logic [15:0] pc_out;
    
    program_counter dut(
    
    .clk            (clk),
    .reset          (reset),
    .branch         (branch),
    .branch_addr    (branch_addr),
    .pc_out         (pc_out)
    );
    
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
    reset = 1;
    #10;
    
    reset = 0;
    #10;
    
    branch = 1;
    branch_addr = 16'd10;
    #10;
    
    branch = 0;
    #10;
    
    $finish;
    end
endmodule
