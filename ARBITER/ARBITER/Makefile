COV_OPTS = -coverage all -covdut top
RUN_OPTS = -access +rwc -svseed random -covscope top -covwork cov_work -covtest ALL 
INTERFACE= PROJECT/INTF/arbiter_if.sv
DESIGN   = PROJECT/DESIGN/arbiter.sv
TEST     = PROJECT/TEST/arbiter_test.sv
TOP      = PROJECT/TOP/top.sv
ENV 	 = PROJECT/ENV/transactor.sv PROJECT/ENV/driver.sv 
INC	 = -incdir PROJECT/ENV
run:
	xrun -mess $(RUN_OPTS) $(COV_OPTS) -sv $(INTERFACE) $(DESIGN) $(ENV) $(TEST) $(TOP) 


show_coverage:
	iccr -load_test ./cov_work/top/ALL -gui
clean:
	rm -fr *.shm *.d *.history *.*log *.key *.err *INCA* *.sv~ *.v~ *.swp* *cov_work *.rpt .* *~
