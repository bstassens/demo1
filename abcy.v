//

module func(
  input wire a, b, c,
  output wire y
);

  y = (a && ~b) || (a && ~c);

endmodule