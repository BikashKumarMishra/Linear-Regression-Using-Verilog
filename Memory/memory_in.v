module memory_in(
    input [7:0] data,
    input [5:0] addr,
    input wr,
    input clk,
    output [7:0] out
);
  reg [7:0] mem [63:0];
  reg [5:0] addr_reg;

  always @ (posedge clk)
    begin
      if (wr) begin
         mem[addr] <= data; // Write data into memory
         addr_reg <= addr;  // Store the address
      end
    end

  assign out = mem[addr_reg]; // Output the value at the stored address

endmodule
