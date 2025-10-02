`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 01:40:45 PM
// Design Name: 
// Module Name: Multi_Digit_7_Segment_Display_Driver
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

module Multi_Digit_7_Segment_Display_Driver(clk, bcd_in, seg_anode, seg_cathode);
input clk;
input [15:0] bcd_in;

output [3:0] seg_anode;
output [6:0] seg_cathode;

wire [3:0] bcd_val;

Anode_Generator Anode(.clk(clk), .bcd_in(bcd_in), .seg_anode(seg_anode), .bcd_val(bcd_val));
BCD_7_Segment Cathode(.data_in(bcd_val), .seg(seg_cathode));

endmodule