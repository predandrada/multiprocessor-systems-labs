`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2020 08:37:46 PM
// Design Name: 
// Module Name: simulation_lab1
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


module simulation_lab1();
    
    reg clk_0;
    design_1_wrapper top(clk_0);
    
    initial begin
        clk_0 = 0;
    end
    
    always begin
        #10 clk_0 = ~clk_0;
    end
    
endmodule
