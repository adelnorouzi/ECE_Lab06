module light(
    input downstairs,
    input  upstairs,
    output  stair_light
 
);

    // Enter logic equation here
    assign stair_light = downstairs^upstairs;

endmodule