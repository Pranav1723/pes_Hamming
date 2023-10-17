module pes_rca(
    input [15:0] A,
    input [15:0] B,
    input Cin,
    output [15:0] Sum,
    output Cout
);

wire [15:0] carry; // Internal carry signals

assign carry[0] = A[0] & B[0] | (A[0] ^ B[0]) & Cin;
assign carry[1] = A[1] & B[1] | (A[1] ^ B[1]) & carry[0];
assign carry[2] = A[2] & B[2] | (A[2] ^ B[2]) & carry[1];
assign carry[3] = A[3] & B[3] | (A[3] ^ B[3]) & carry[2];
assign carry[4] = A[4] & B[4] | (A[4] ^ B[4]) & carry[3];
assign carry[5] = A[5] & B[5] | (A[5] ^ B[5]) & carry[4];
assign carry[6] = A[6] & B[6] | (A[6] ^ B[6]) & carry[5];
assign carry[7] = A[7] & B[7] | (A[7] ^ B[7]) & carry[6];
assign carry[8] = A[8] & B[8] | (A[8] ^ B[8]) & carry[7];
assign carry[9] = A[9] & B[9] | (A[9] ^ B[9]) & carry[8];
assign carry[10] = A[10] & B[10] | (A[10] ^ B[10]) & carry[9];
assign carry[11] = A[11] & B[11] | (A[11] ^ B[11]) & carry[10];
assign carry[12] = A[12] & B[12] | (A[12] ^ B[12]) & carry[11];
assign carry[13] = A[13] & B[13] | (A[13] ^ B[13]) & carry[12];
assign carry[14] = A[14] & B[14] | (A[14] ^ B[14]) & carry[13];
assign carry[15] = A[15] & B[15] | (A[15] ^ B[15]) & carry[14];

assign Sum = A + B + Cin;
assign Cout = carry[15];

endmodule

