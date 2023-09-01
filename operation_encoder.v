module operation1
(    input enable,
	  input [3:0] data_in2,
	  output [6:0] data_o
);

wire p0,p1,p2;

assign p0 = ( data_in2[0] ^ data_in2[1] ^ data_in2[3] );
assign p1 = ( data_in2[0] ^ data_in2[2] ^ data_in2[3] );
assign p2 = ( data_in2[1] ^ data_in2[2] ^ data_in2[3] );

reg [6:0] data_o2;

always @ (*)
begin
    if ( enable == 1)
	 begin
	     data_o2[6:0]={data_in2[3],data_in2[2],data_in2[1] ,p2, data_in2[0] ,p1,p0};
	 end
	 else 
	     data_o2 = 7'b0000000;
end
assign  data_o [6:0] = data_o2[6:0];
endmodule
