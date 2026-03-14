`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 11:45:04
// Design Name: 
// Module Name: cpu_top_tb
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


module cpu_top_tb;
    logic clk;
    logic reset;
    logic [15:0] pc_out;
    
    cpu_top dut(
        .clk    (clk),
        .reset  (reset),
        .pc_out (pc_out)
    );
    
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
        reset = 1;
        #20;
        reset = 0;
        #200;
        $finish;
    end
endmodule
