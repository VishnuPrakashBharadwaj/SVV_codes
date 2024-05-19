

class driver;

trans_req tr_drv; /* Transactor object*/

virtual arbiter_if.TEST_MP dr_if;
    
    // constructor
    function new(virtual arbiter_if.TEST_MP dr_if);
      this.dr_if = dr_if; // virtual interface intialization
    endfunction

task drive_req;
tr_drv=new();
    begin
      if (tr_drv.randomize()) begin
        dr_if.rst = tr_drv.rst;
        dr_if.req = tr_drv.req;
        tr_drv.disp();
      end else begin
        $display("RANDOMIZATION FAILED");
      end

      #1 $display("\nFROM DRIVER: SENT REQUEST TO DUT: %b\n", dr_if.req);

      repeat (2) @(posedge dr_if.clk);
      $display("GRANT RECEIVED from DUT: %b\n", dr_if.grant);
      $display("**********TRANSACTION DONE***************\n\n");
    end
  endtask
endclass
