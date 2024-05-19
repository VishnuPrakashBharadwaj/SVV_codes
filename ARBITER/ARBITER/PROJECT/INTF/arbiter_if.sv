
interface arbiter_if(input bit clk);
  logic [1:0] grant;
  logic [3:0] req;
  bit rst;

  modport DUT_MP(input clk, req, rst, output grant);
  modport TEST_MP(output rst, clk, req, input grant);
 modport COV_MP(input clk,rst,req,grant);

endinterface

