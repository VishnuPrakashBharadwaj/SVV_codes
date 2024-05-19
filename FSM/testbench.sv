// Code your testbench here
// or browse Examples
module testbench;
  reg clk, rst_n, go;
  wire finish;
  wire [1:0] state;
  
  DUT dut(clk, rst_n, go, finish, state);
  
  always #1 clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    
   	 	clk = 0; rst_n = 0; go = 0;
 	#2  rst_n = 1;
    #2	go = 1;
    #2  go = 0;
    #32 rst_n = 0; go = 0;
    #2	rst_n = 1;
    #100 $finish;
  
  end
  
  
endmodule