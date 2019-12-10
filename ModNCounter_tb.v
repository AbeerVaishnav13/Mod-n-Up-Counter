`timescale 1s/100ms
`include "ModNCounter.v"

module ModNCounter_tb ();

	reg clk;
	reg clr;
	wire [2:0]Q;

	ModNCounter myCounter(clk, clr, Q);

	initial
	begin 
		$monitor("Count = %b", Q);
		$dumpfile("modNCounter.vcd");
		$dumpvars(0, ModNCounter_tb);

		clr <= 0;
		clk <= 1; #1;
		clr <= 1;
		clk <= 0; #1; //Count 0

		clk <= 1; #1;
		clk <= 0; #1; //Count 1

		clk <= 1; #1;
		clk <= 0; #1; //Count 2

		clk <= 1; #1;
		clk <= 0; #1; //Count 0

		clk <= 1; #1;
		clk <= 0; #1; //Count 1

		clk <= 1; #1;
		clk <= 0; #1; //Count 2

		clk <= 1; #1;
		clk <= 0; #1; //Count 0

		clk <= 1; #1;
		clk <= 0; #1; //Count 1

		clk <= 1; #1;
		clk <= 0; #1; //Count 2

		clk <= 1; #1;
		clk <= 0; #1; //Count 0

		clk <= 1; #1;
		clk <= 0; #1; //Count 1


		clr <= 0;
		clk <= 1; #1;
		clr <= 1;
		clk <= 0; #1; //Count 0


		clk <= 1; #1;
		clk <= 0; #1; //Count 1

		clk <= 1; #1;
		clk <= 0; #1; //Count 2

		$finish;
	end

endmodule