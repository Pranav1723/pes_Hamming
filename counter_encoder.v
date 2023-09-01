module counter1
(    input en,
     input clk,
	  input reset,
	  output [2:0] count
);
reg [2:0] data;
always @ (posedge clk)
begin
    if (reset == 1)
	     data <= 0;
	 else
	 begin
        if ( en == 1 )
	          data <= data + 1'b 1;
	 end
end
assign count = data;

endmodule
