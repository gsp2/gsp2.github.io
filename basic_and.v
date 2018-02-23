module basic_and (a, b, out);
  input a, b;
  output out;
   
  assign out = a & b;
endmodule

module basic_and_tb();
  reg a, b;
  wire out;
   
  basic_and DUT (
    .a(a),
    .b(b),
    .out(out)
  );
   
  initial begin
    // Dump results of the simulation to basic_and.vcd
    $dumpfile("basic_and.vcd");
    $dumpvars;

    a = 0;
    b = 0;
    #20
    a = 0;
    b = 1;
    #20
    a = 1;
    b = 0;
    #20
    a = 1;
    b = 1;
    #20
    $finish;
  end
endmodule
