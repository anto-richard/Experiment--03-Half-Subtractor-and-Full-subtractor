module FullSubtractor(a,b,c,diff,borr);
input a,b,c;
output diff,borr;
assign borr = (~a&(b^c)|(b&c));
assign diff = (a^b^c);
endmodule