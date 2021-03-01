`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2020 10:20:07 PM
// Design Name: 
// Module Name: simulation
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


module simulation();
    reg clk;
    reg reset;

    design_1_wrapper top(clk, reset);

    initial begin
        clk = 0;
        reset = 1;
        #100 reset = 0;
        #100 reset = 1;
    end
    always begin
        #50 clk = ~clk;
    end
endmodule
