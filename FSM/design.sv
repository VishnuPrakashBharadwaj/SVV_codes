// Code your design here
module DUT(
	input clk, rst_n, go,
  	output finish,
  output [1:0] s
);
	parameter IDLE = 2'b00;
  	parameter WAIT = 2'b01;
  	parameter DONE = 2'b11;
  
	reg [1:0] state;
	reg [3:0] count;
  
	always @ (posedge clk or negedge rst_n) begin
		if(!rst_n) begin
       		state <= IDLE;
          	count <= 4'd0;
		end else begin
          case(state)
            IDLE: begin
              state <= (go) ? WAIT : IDLE;
              count <= 0;
            end
              
            WAIT: begin
              state <= (count == 4'd14) ? DONE : WAIT;
              count <= count + 4'b1;
            end
              
            DONE:
              state <= DONE;
              
            default: begin
            	state <= IDLE;
              	count <= 0;
            end
            	
          endcase
		end
	end

	assign finish = (state == DONE);
  	assign s = state;
  
  	// assertions
    property got_finish;
      @(posedge clk) disable iff(~rst_n)
      go |-> ##15 finish;
    endproperty
    assert property (got_finish);
endmodule