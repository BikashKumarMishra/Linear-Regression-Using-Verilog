module tb_adder_ckt_8_bit;
    reg [7:0] A;       
    reg [7:0] B;       
    reg       Cin;    
    wire [7:0] sum;    
    wire       cy;     

  
    adder_ckt_8_bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .sum(sum),
        .cy(cy)
    );

    initial begin
        $dumpfile("adder_ckt_8_bit.vcd");
        $dumpvars(0, tb_adder_ckt_8_bit);

    
        A = 8'b00000001;
        B = 8'b00000001;
        Cin = 1'b0;
        #10; 

        A = 8'b11111111;
        B = 8'b00000001;
        Cin = 1'b1;
        #10;

        A = 8'b10101010;
        B = 8'b01010101;
        Cin = 1'b0;
        #10;

        A = 8'b11110000;
        B = 8'b00001111;
        Cin = 1'b1;
        #10;

        A = 8'b10110101;
        B = 8'b11001001;
        Cin = 1'b1;
        #10;

        $finish; 
    end

    initial begin
        $monitor("Time=%0t | A=%b B=%b Cin=%b | sum=%b cy=%b",
                 $time, A, B, Cin, sum, cy);
    end
endmodule