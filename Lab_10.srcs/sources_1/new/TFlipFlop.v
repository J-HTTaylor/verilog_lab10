`timescale 1ns / 1ps

module TFlipFlop(
    input T, TClock,
    
    wire TData,
    output TQ,
    output notTQ
    );
    
   JKFlipFlop JK_init(
     .J(T),     
     .K(T),     
     .JKClock(TClock),
     .JKQ(TQ),  
     .notJKQ(notTQ)
   );
  
endmodule
