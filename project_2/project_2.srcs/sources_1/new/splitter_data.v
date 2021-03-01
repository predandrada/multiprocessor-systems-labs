
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2020 10:01:37 PM
// Design Name: 
// Module Name: splitter_data
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

`timescale 1ns / 1ps
module splitter_data(d,d1, d2);
    input [15:0] d;
    output [7:0] d1;
    output [7:0] d2;
    
    assign d1 = d[15:8];
    assign d2 = d[7:0];
endmodule
