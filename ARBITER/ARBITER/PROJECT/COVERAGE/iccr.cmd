load_test  ./cov_work/top/ALL

report_summary -inst top -betsafd iccr_summ_rpt.txt 

report_detail -inst top ./iccr_detail_rpt.txt

iccr -gui
