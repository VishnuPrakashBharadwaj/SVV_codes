module tb_top;
bit clk;
always #1 clk = ~clk;

counter_if cnt_if(clk);
counter DUT(cnt_if.DUT_MP);
test TEST(cnt_if.TEST_MP);

initial begin
	$dumpfile("counter.vcd");
	$dumpvars;
	#500 $finish;
end

endmodule
