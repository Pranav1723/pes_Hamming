module pes_hamming
(    input serial_in,
     input clk,
	  input write,
     output serial_out
);
wire en_decoder;
wire [6:0] data1;
encoder c1
(     .clk(clk),
	   .data_in(serial_in),
	   .write(write),
	   .ready(en_decoder),
	   .data_out(data1)
);
decoder c2
(     .in(data1),
      .clk(clk), 
      .enable(en_decoder),
	   .serial_out(serial_out)
);

endmodule
