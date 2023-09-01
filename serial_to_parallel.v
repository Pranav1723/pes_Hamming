module serial_to_parallel
(    input reset,
     input write,
	  input data_in,
	  input clk,
	  output wire[3:0] data_o1
);

reg [3:0] mem  ;

always @ (posedge clk)
begin 
    if ( reset == 1)
	 begin
		  mem [3:0] = 4'b0000;
	  end
	  else if (  write == 1)
	  begin  
				 mem <= { data_in , mem[3:1] } ;
		
	  end
		
end
assign data_o1 = mem[3:0];

endmodule
