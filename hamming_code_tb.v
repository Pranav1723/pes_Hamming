module hamming_code_tb();
reg serial_in,clk,write;
wire serial_out;

hamming_code uut 
(
.serial_in(serial_in),
.clk(clk),
.write(write),
.serial_out(serial_out)
);

parameter clk_period = 100;
always 
begin
    # (clk_period / 2);
    clk = ~clk;
end
initial
begin
    serial_in= 1;
    clk=1 ;
    write=1;
end
endmodule
