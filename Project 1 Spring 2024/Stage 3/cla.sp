.include ../model/32nm_HP.pm
.include ./nand4.sub
.include ./nand3_2.sub
.include ./nand2.sub
.include ./nor4.sub
.include ./nor3.sub
.include ./nor2.sub
.include ./not1.sub

.param SUPPLY=1

Va Vdd 0 'SUPPLY'


V1 p3n 0 1
V1 p2n 0 1
V1 p1n 0 1
V1 p0n 0 1
V1 g3n 0 1
V1 g2n 0 1
V1 g1n 0 1
V1 g0n 0 1
V1 cnn 0 1

x1 p0n p1n p2n p3n p Vdd nor4
x2 p pn Vdd not1

x3 g0n g1n g2n g3n x3o Vdd nand4
x4 p1n g3n g2n g1n x4o Vdd nand4
x5 g3n g2n p2n Vdd x5o Vdd nand3_2
x 


.op
.control
run
print out2

.endc

.end