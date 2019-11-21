//D flip-flop model
//author: Brady Stassens

`timescale 1ns/100ps

module demo1(
  input wire clk, d,
  output reg q
  
);
  
  always @(posedge clk)
    begin
      q <= d;
    end
  
endmodule