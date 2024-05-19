program arbiter_test(arbiter_if.TEST_MP arbif);

driver drv_dut;


// covergroup cg;
// option.per_instance = 1;
// cover_point_REQUEST: coverpoint arbif.req {
// bins NO_REQUEST = {0};
// bins ONLY_D     = {1};
// bins ONLY_C     = {2};
// bins D_C        = {3};
// bins ONLY_B     = {4};
// bins D_B        = {5};
// bins C_B        = {6};
// bins B_C_D      = {7};
// bins ONLY_A     = {8};
// bins A_D        = {9};
// bins A_C        = {10};
// bins A_C_D      = {11};
// bins A_B        = {12};
// bins A_B_D      = {13};
// bins A_B_C      = {14};
// bins A_B_C_D    = {15};}

// cover_point_RESET: coverpoint arbif.rst{
// bins NO_RESET    ={0};
// bins RESET       ={1};}

// endgroup

// cg cg_inst = new();





  initial begin
  drv_dut=new(arbif);
    repeat (20) 
    begin 
  	drv_dut.drive_req();
    	cg_inst.sample();
    end
  $finish;
   end



endprogram

