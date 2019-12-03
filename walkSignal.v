//Walk Signal
//author: Brady Stassens

/*
x	y	sx	sy
--------------------------
0	0	0	0
0	1	0	1
1	0	1	0
1	1	x	x

f(sx)= x AND f(sy)= y
*/

`timescale 1ns/1ps

module signal(
  input wire clk, x, y,
  output reg sx, sy
  
);
  
  always @(posedge clk)
    begin
      sx <= x;
      sy <= y;
    end
  
endmodule

module signal_top(
  input clk, x, y,
  output sx, sy
);
  
  signal uut(clk, 1, 1, sx, sy);
  
endmodule