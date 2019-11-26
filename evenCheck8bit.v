//8-bit even parity checker(isEven)
//author: Brady Stassens

`timescale 1ns/1ps

module even(
  input reg [7:0] in,
  output wire out
);
  
  reg tmp;
  assign tmp = in[0] + in[1] + in[2] + in[3] + in[4] + in[5] + in[6] + in[7];
  assign out = ~tmp;
  
endmodule

module even_top(
  output out
);
  
  even uut('b10101111, out);
  
endmodule