`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2020 10:01:37 PM
// Design Name: 
// Module Name: splitter_addresses
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


module splitter_addresses(a, a1, a2);
    input [23:0] a;
    output [9:0] a1;
    output [12:0] a2;
    
    assign a1 = a[23:14];
    assign a2 = a[13:1];
endmodule
