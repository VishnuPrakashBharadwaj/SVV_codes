// Defining the interace
interface counter_if(input bit clk);

logic rst, en;
bit[3:0] q;

modport DUT_MP(input clk, rst, en, output q);
modport TEST_MP(output clk, rst, en, q);

endinterface

