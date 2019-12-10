module ModNCounter (
	input clk,    // Clock
	input clr,  // Asynchronous clear
	output [1:0]Q
);

reg [1:0]Q;

always @(posedge clk or negedge clr) 
begin 
	if(~clr) 
	begin
		Q <= 2'b00;
	end 

	else if(Q == 2'b10)
	begin 
		Q <= 2'b00;
	end

	else 
	begin
		Q <= Q + 1;
	end
end

endmodule