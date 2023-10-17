module tb_pes_rca;

    // Inputs
    reg [15:0] A;
    reg [15:0] B;
    reg Cin;

    // Outputs
    wire [15:0] Sum;
    wire Cout;

    // Instantiate the Unit Under Test (UUT)
    pes_rca uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Clock generation
    reg Clock = 0;
    always #10 Clock = ~Clock;

    // Simulation inputs
    initial begin
        // Initialize inputs
        A = 16'h1234;
        B = 16'h5678;
        Cin = 1'b0;

        // Apply inputs after some initial delay
        #20 A = 16'hABCD;
        #20 B = 16'h9876;
        #20 Cin = 1'b1;

        // Wait for a while to observe the results
        #100;

        // Finish simulation
        $finish;
    end

    // Dump VCD file for waveform simulation
    initial begin
        $dumpfile("pes_rca.vcd");
        $dumpvars;
    end

endmodule

