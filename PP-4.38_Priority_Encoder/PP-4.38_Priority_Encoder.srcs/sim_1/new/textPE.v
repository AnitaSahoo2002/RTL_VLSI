`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2024 15:44:31
// Design Name: 
// Module Name: textPE
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


module textPE();
reg [3:0] i;
wire a,b,z;
PE text(.d(i),.x(a),.y(b),.v(z));
initial
begin
$monitor ($time,"data=%h,x=%b,y=%b,v=%b",i,a,b,z);
#5 i=4'h0;
#5 i=4'h1;
#5 i=4'h6;
#5 i=4'hA;
#5 i=4'h5;
$finish;
end
endmodule
