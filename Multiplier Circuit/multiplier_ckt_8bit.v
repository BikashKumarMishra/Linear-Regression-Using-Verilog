
module multiplier_ckt_2bit(
    input [1:0] A,B,
    input cin,
    output [3:0]p);

    wire [1:0] s1;
    wire [1:0] s2;
    wire cy;
    and G1(s1[0], A[0], B[0]);
    and G2(s1[1], A[1], B[0]);
    and G3(s2[0], A[0], B[1]);
    and G4(s2[1], A[1], B[1]);

    assign p[0] = s1[0]^cin;
    xor G6(p[1], s1[1], s2[0]);
    and G7(cy, s1[1], s2[0]);
    xor G8(p[2],cy,s2[1]);
    and G9(p[3], cy, s2[1]);

endmodule


module multiplier_ckt_8bit(
    input [7:0] A,B,
    input cin,
    output [15:0]p);
    assign cin = 0;
    multiplier_ckt_2bit m1(A[1:0],B[1:0],cin,p[3:0]);
    multiplier_ckt_2bit m2(A[3:2],B[3:2],p[3],p[7:4]);
    multiplier_ckt_2bit m3(A[5:4],B[5:4],p[7],p[11:8]);
    multiplier_ckt_2bit m4(A[7:6],B[7:6],p[11],p[15:12]);

endmodule

