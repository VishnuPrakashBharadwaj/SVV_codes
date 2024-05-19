module top;
bit clk;

initial clk=0;
always #1 clk = ~clk;

arbiter_if arbif(clk);
arbiter DUT_IF(arbif);
arbiter_test TEST_IF(arbif);

endmodule 
