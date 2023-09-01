module counter2
(    input clk,
	  input counter_reset,
	  output shift
);
reg [2:0] count; 
reg data;
always @ (posedge clk)
begin
    if (counter_reset == 1)
	     count <= 0;
	 else
	     count <= count +1;
end
always @(posedge clk)
begin
    if (count <=3 && count >= 0)
	   begin
		   data <=1;
		end
	 else
	 begin
	     data <=0;
	end
end
assign shift = data ;
endmodule
