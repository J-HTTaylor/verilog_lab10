`timescale 1ns / 1ps

module DFlipFlop(
    input Data,
    input Clock,
    output reg Q,
    output notQ
    );

    initial begin
        Q <= 0;
    end
    
    always @ (posedge Clock) begin //on data or enable change from 0-1 this begin
        if(Clock)
            Q <= Data;
     end
        assign notQ = ~Q; //this doesnt cause problems as until Q is called for the first time it is a invalid state
          
endmodule

