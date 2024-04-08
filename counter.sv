module counter(counter_if.DUT_MP cnt_if);

always @ (posedge cnt_if.clk or posedge cnt_if.rst)
	cnt_if.q <= (cnt_if.rst) ? 4'd0 : cnt_if.q + cnt_if.en; 

endmodule

