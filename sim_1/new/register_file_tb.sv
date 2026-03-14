`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2026 07:22:34
// Design Name: 
// Module Name: register_file_tb
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


module register_file_tb;

      logic       clk;
      logic       we;        
      logic [2:0] waddr;    
      logic [15:0] wdata;     
      logic [2:0] raddr;     
      logic [15:0] rdata;
      logic [2:0]  raddr2;     
      logic [15:0] rdata2;
      
      register_file dut(
      
      .clk      (clk),
      .we       (we),
      .waddr    (waddr),
      .wdata    (wdata),
      .raddr    (raddr),
      .rdata    (rdata),
      .raddr2    (raddr2),
      .rdata2    (rdata2)      
      
      );
      
    initial clk = 0;
    always #5 clk = ~clk;
      
initial begin
    we    = 1;
    waddr = 3'b011;
    wdata = 16'd422;
    @(posedge clk);  // clock edge bekle
    #1;              // küçük delay
    we     = 0;
    raddr  = 3'b011;
    raddr2 = 3'b000;
    #10;
    $finish;
end
      
endmodule
