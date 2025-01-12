module adder_ckt(A,B,Cin,sum,cy);
input A,B,Cin;
output sum,cy;

assign sum = A^B^Cin;
assign cy = (A&B) | (B&Cin) | (Cin&A);
endmodule

module adder_ckt_8_bit(
    input [7:0] A,
    input [7:0] B,
    input  Cin,
    output [7:0] sum,
    output cy
);
wire [7:0] carry;   
    adder_ckt FA0 (.A(A[0]), .B(B[0]), .Cin(Cin),       .sum(sum[0]), .cy(carry[0]));
    adder_ckt FA1 (.A(A[1]), .B(B[1]), .Cin(carry[0]),  .sum(sum[1]), .cy(carry[1]));
    adder_ckt FA2 (.A(A[2]), .B(B[2]), .Cin(carry[1]),  .sum(sum[2]), .cy(carry[2]));
    adder_ckt FA3 (.A(A[3]), .B(B[3]), .Cin(carry[2]),  .sum(sum[3]), .cy(carry[3]));
    adder_ckt FA4 (.A(A[4]), .B(B[4]), .Cin(carry[3]),  .sum(sum[4]), .cy(carry[4]));
    adder_ckt FA5 (.A(A[5]), .B(B[5]), .Cin(carry[4]),  .sum(sum[5]), .cy(carry[5]));
    adder_ckt FA6 (.A(A[6]), .B(B[6]), .Cin(carry[5]),  .sum(sum[6]), .cy(carry[6]));
    adder_ckt FA7 (.A(A[7]), .B(B[7]), .Cin(carry[6]),  .sum(sum[7]), .cy(cy)); 
endmodule