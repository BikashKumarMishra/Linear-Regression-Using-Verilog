module tb_adder_ckt_8_bit;
    reg [7:0] A;       // Input A
    reg [7:0] B;       // Input B
    reg       Cin;     // Carry-in
    wire [7:0] sum;    // Sum output
    wire       cy;     // Carry-out

    // Instantiate the 8-bit adder module
    adder_ckt_8_bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .sum(sum),
        .cy(cy)
    );

    // Test stimulus
    initial begin
        // Initialize the waveform dump
        $dumpfile("adder_ckt_8_bit.vcd");
        $dumpvars(0, tb_adder_ckt_8_bit);

        // Display header for better output readability
        $display("Time |   A   |   B   | Cin |  Sum  | Cy");
        $display("-----------------------------------------");

        // Apply test cases with delays
        A = 8'b00000001; B = 8'b00000001; Cin = 1'b0; #10;
        $display("%4t | %4d | %4d |  %b  | %4d |  %b", $time, A, B, Cin, sum, cy);

        A = 8'b11111111; B = 8'b00000001; Cin = 1'b1; #10;
        $display("%4t | %4d | %4d |  %b  | %4d |  %b", $time, A, B, Cin, sum, cy);

        A = 8'b10101010; B = 8'b01010101; Cin = 1'b0; #10;
        $display("%4t | %4d | %4d |  %b  | %4d |  %b", $time, A, B, Cin, sum, cy);

        A = 8'b11110000; B = 8'b00001111; Cin = 1'b1; #10;
        $display("%4t | %4d | %4d |  %b  | %4d |  %b", $time, A, B, Cin, sum, cy);

        A = 8'b10110101; B = 8'b11001001; Cin = 1'b1; #10;
        $display("%4t | %4d | %4d |  %b  | %4d |  %b", $time, A, B, Cin, sum, cy);

        // End simulation
        $finish;
    end

    // Monitor signals for changes (decimal output)
    initial begin
        $monitor("Time=%0t | A=%0d B=%0d Cin=%0b | Sum=%0d Cy=%0b",
                 $time, A, B, Cin, sum, cy);
    end
endmodule
