module arbiter(arbiter_if.DUT_MP arbif);
always@(posedge arbif.clk)
begin
if(arbif.rst) arbif.grant<= 2'bxx;
else 
begin
casex(arbif.req)
4'bxxx1:arbif.grant <= 2'b11;
4'bx1x0:arbif.grant <= 2'b01;
4'bx010:arbif.grant <= 2'b10;
4'b1000:arbif.grant <= 2'b00;
default:arbif.grant <= arbif.grant;
endcase
end
end
endmodule 
