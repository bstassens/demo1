// Design of positive edge D Flip Flop
// Author:
// Updated:

// time measurement unit 1 nsec with 100 ps percision
`timescale 1ns/100ps

// input/output of module
module RisingEdge_DFlipFlop(
  input wire clk, d, // input
  output reg q       // output in a store
);
  
  reg[0:0] i;
  
  // body of our design
  always @(posedge clk) // executes at every clock rising edge
    begin
      q <= d + i[0]; // aync - make an assignment
      i <= i + 1;
    end

endmodule
