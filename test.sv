module test(counter_if.TEST_MP cnt_if);

initial begin
	cnt_if.rst = 1;
	cnt_if.en = 0;
	repeat(5) @ (posedge cnt_if.clk);
	cnt_if.rst = 0;
	cnt_if.en = 1;
	drive_clock(8);
end

// Drive clock task
task drive_clock(input integer N);
begin
	cnt_if.en = 1;
	repeat(N) @(posedge cnt_if.clk);
	cnt_if.en = 0;
	
	if (cnt_if.q == N%16)
		$display("@%t:No of clocks driver after reset = %d, COUNT VALUE = %d : TEST PASSED", $time, N, cnt_if.q);
	else
		$display("@%t:No of clocks driver after reset = %d, COUNT VALUE = %d : TEST FAILED", $time, N, cnt_if.q);
end

endmodule
