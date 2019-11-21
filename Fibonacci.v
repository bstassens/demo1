//Fibonacci(up to the 13th # in sequence) model [0,1,1,2,3,5,8,13,21,34,55,89,144]
//author: Brady Stassens

`timescale 1ns/1ps

module fib(
  input wire clk,
  output reg [7:0] y
  
);
  
  reg [7:0] tmp;
  
  initial
    begin
      y = 'b00000000;
      tmp = 'b00000000;
    end
  
  always @(posedge clk)
    begin
      y <= y + tmp;
      tmp <= y;
      if(y == 0)
        begin
          y <= 1;
        end
      if(y == 'b10010000)
        begin
          y <= 0;
        end
    end

endmodule