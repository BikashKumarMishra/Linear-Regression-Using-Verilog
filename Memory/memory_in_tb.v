module memory_in_tb;
  reg [7:0] data;
  reg [5:0] addr;
  reg clk;
  reg wr;
  wire [7:0] out;

  memory_in DUT(
    .data(data),
    .addr(addr),
    .wr(wr),
    .clk(clk),
    .out(out)
  );

  initial
    begin
      $dumpfile("memory_in_tb.vcd");
      $dumpvars(0, memory_in_tb);

      clk = 1'b1;
      forever #5 clk=~clk;
    end
  initial
    begin
      data = 8'h01;
      addr = 5'd0;
      wr = 1'b1;
      #10;

      data = 8'h02;
      addr = 5'd1;
      wr = 1'b1;
      #10;

      data = 8'h03;
      addr = 5'd2;
      wr = 1'b1;
      #10;

      addr = 5'd0;
      wr = 1'b0;
      #10;

      addr = 5'd1;
      #10;

      addr = 5'd2;
      #10;

      data = 8'h04;
      addr = 5'd1;
      wr = 1'b1;
      #10;

      addr =5'd1;
      wr=1'b0;
      #10;
      $finish;
    end

endmodule