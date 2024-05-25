`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2024 15:35:03
// Design Name: 
// Module Name: PE
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


module PE(
    input [3:0] d,
    output x,y,v
    );
    wire t1,t2;
    not G1(t1,d[2]);
    and G2(t2,t1,d[1]);
    or G3(y,d[3],t2);
    or G4(x,d[3],d[2]);
    or G5(v,x,d[1],d[0]);
    
endmodule
