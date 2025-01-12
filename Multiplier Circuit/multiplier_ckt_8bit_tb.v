module multiplier_8bit_tb;
    reg [7:0] A, B;         // Inputs
    wire [15:0] p;          // Output product

    // Instantiate the 8-bit multiplier
    multiplier_ckt_8bit uut (
        .A(A),
        .B(B),
        .p(p)
    );

    // Test stimulus
    initial begin
        $dumpfile("multiplier_ckt_8bit.vcd");     // Specify the VCD file
        $dumpvars(0, multiplier_8bit_tb);        // Dump variables of this testbench

        $display("Time |    A     |    B     |    Product    ");
        $display("------------------------------------------------");

        // Test Case 1: 0 * 0
        A = 8'b00000000; B = 8'b00000000; #10;
        $display("%4d | %8b | %8b | %16b", $time, A, B, p);

        // Test Case 2: 1 * 1
        A = 8'b00000001; B = 8'b00000001; #10;
        $display("%4d | %8b | %8b | %16b", $time, A, B, p);

        // Test Case 3: 255 * 1
        A = 8'b11111111; B = 8'b00000001; #10;
        $display("%4d | %8b | %8b | %16b", $time, A, B, p);

        // Test Case 4: 255 * 255
        A = 8'b11111111; B = 8'b11111111; #10;
        $display("%4d | %8b | %8b | %16b", $time, A, B, p);

        // Test Case 5: Random Inputs 1
        A = 8'b01010101; B = 8'b10101010; #10;
        $display("%4d | %8b | %8b | %16b", $time, A, B, p);

        // Test Case 6: Random Inputs 2
        A = 8'b11001100; B = 8'b00110011; #10;
        $display("%4d | %8b | %8b | %16b", $time, A, B, p);

        // Test Case 7: Large Values
        A = 8'b10000000; B = 8'b10000000; #10;
        $display("%4d | %8b | %8b | %16b", $time, A, B, p);

        $finish; // End simulation
    end

endmodule
