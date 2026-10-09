module top(

input [7:0] sw,
output [5:0] led
);


light inst(
    .downstairs(sw[0]),
    .upstairs(sw[1]),
    .stair_light(led[0])

);

adder inst1(

.A(sw[2]),
.B(sw[3]),
.Y(led[1]),
.cout(led[2])


);
wire lsbcout;
full_adder lsb(

.cin(0),
.A(sw[4]),
.B(sw[6]),
.Y(led[3]),
.cout(lsbcout)


);

full_adder msb(

.cin(lsbcout),
.A(sw[5]),
.B(sw[7]),
.Y(led[4]),
.cout(led[5])

);


endmodule