class trans_req;
  randc bit [3:0] req;
  rand bit rst;

 constraint random_value_constraint {
//Set the probability of random_signal being 1
   rst dist { [0:0] := 8, [1:1] := 1 };
 }

  task disp;
    begin
      $display("**********NEW TRANSACTION***************\n");
      $display("FROM TRANSACTOR: REQUEST GENERATED = %b and RESET = %b", req,rst);
    end
  endtask

endclass
