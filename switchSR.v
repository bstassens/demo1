//SR switch
//author: Brady Stassens

`timescale 1ns/1ps

module SR(
  input wire clk, s, r,
  output reg q, qNot
  
);
  
  always @(posedge clk)
    if(r)
      begin
        q <= 0;
      end
  else if(s)
    begin
      q <= 1;
    end
  else
    begin
      q <= q;
    end
  
  assign qNot = ~q;
  
endmodule

module SR_top(
  input clk, s, r,
  output q, qNot
);
  
  SR uut(clk, 0, 0, q, qNot);
  
endmodule