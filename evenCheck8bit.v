//8-bit even parity checker(isEven)
//author: Brady Stassens

`timescale 1ns/1ps

module even(
  input reg [7:0] in,
  output wire out
);
  
  assign out = ~in[0];
  
endmodule