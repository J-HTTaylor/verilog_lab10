`timescale 1ns / 1ps

module top(
input [15:0]sw,
input btnC,
output [15:0] led
    );
    
    //add module for D-FF with posedge
    DFlipFlop DFF_init(
    .Data(sw[0]),
    .Clock(btnC),
    .Q(led[0]),
    .notQ(led[1])
    );
    //add module for JK-FF
    JKFlipFlop JK_init(
        .J(sw[1]),
        .K(sw[2]),
        .JKClock(btnC),
        .JKQ(led[2]),
        .notJKQ(led[3])
        //.JKData(led[6]) debug and testing only
    );
    //add module for T-FF
    
    TFlipFlop T_init(
        .T(sw[3]),
        .TClock(btnC),
        .TQ(led[4]),
        .notTQ(led[5])
    );
endmodule
