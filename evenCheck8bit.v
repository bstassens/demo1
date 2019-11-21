//8-bit even parity checker
//author: Brady Stassens

`timescale 1ns/1ps

module even(
  input reg [7:0] in,
  output wire out
  
);
  
  if(in[0:0] == 0)
    begin
      assign out = 1;
    end
  else
    begin
      assign out = 0;
    end
  
endmodule