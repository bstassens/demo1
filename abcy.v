//Function of y = (a and not b) or (a and not c)
//author: Brady Stassens

`timescale 1ns/100ps

module func(
  input wire a, b, c,
  output wire y
);

  assign y = (a && ~b) || (a && ~c);

endmodule

module func_top(
  input a, b, c,
  output y
);
  
  func uut(1, 1, 1, y);
  
endmodule