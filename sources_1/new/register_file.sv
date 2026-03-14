`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2026 07:11:11
// Design Name: 
// Module Name: register_file
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


module register_file(
    input  logic       clk,
    input  logic       we,        // write enable
    input  logic [2:0] waddr,     // write address
    input  logic [15:0] wdata,    // write data
    input  logic [2:0] raddr,     // read address
    input  logic [2:0] raddr2,
    
    output logic [15:0] rdata,      // read data
    output logic [15:0] rdata2
);
    logic [15:0] regs [7:0]; 
     
    assign rdata = regs[raddr];
    assign rdata2 = regs[raddr2];
    
    always_ff@(posedge clk) begin
        if (we) begin
            regs[waddr] <= wdata;
        end
    end
endmodule
