`timescale 1ns / 1ps

module JKFlipFlop(
    input J,K,
    input JKClock,
 
    wire JKData,
    wire JKQ,
    wire notJKQ
    );

    assign JKData = (J & ~JKQ) | (~K & JKQ);
    
        DFlipFlop DJK_init(
        .Data(JKData),
        .Clock(JKClock),
        .Q(JKQ),
        .notQ(notJKQ)
        );
endmodule

