.include ../model/32nm_HP.pm
.include ./nand4.sub
.include ./nand3_2.sub
.include ./nand2.sub
.include ./nor4.sub
.include ./nor3.sub
.include ./nor2.sub
.include ./not1.sub

.param SUPPLY=1

.TEMP 85

Va Vdd 0 'SUPPLY'


V1 p3n 0 1
V2 p2n 0 1
V3 p1n 0 1
V4 p0n 0 1
V5 g3n 0 1
V6 g2n 0 1
V7 g1n 0 1
V8 g0n 0 1
V9 cnn 0 1

x1 p0n p1n p2n p3n p Vdd nor4
x2 p pn Vdd not1

x3 g0n g1n g2n g3n x3o Vdd nand4
x31 x3o x3on Vdd not1
x4 p1n g3n g2n g1n x4o Vdd nand4
x41 x4o x4on Vdd not1
x5 g3n g2n p2n x5o Vdd nand3_2
x51 x5o x5on Vdd not1
x6 p3n g3n x6o Vdd nand2
x61 x6o x6on Vdd not1
x7 x3on x4on x5on x6on g Vdd nor4
x8 g gn Vdd not1

x9 g2n g1n g0n cnn x9o Vdd nand4
x91 x9o x9on Vdd not1
x10 p0n g0n g2n g1n x10o Vdd nand4
x101 x10o x10on Vdd not1
x11 g1n g2n p1n x11o Vdd nand3_2
x111 x11o x11on Vdd not1
x12 p2n g2n x12o Vdd nand2
x121 x12o x12on Vdd not1
x13 x9on x10on x11on x12on cnz Vdd nor4

x14 g1n g0n cnn x14o Vdd nand3_2
x15 x14o x14on Vdd not1
x16 p0n g1n g0n x16o Vdd nand3_2
x17 x16o x16on Vdd not1
x18 p1n g1n x18o Vdd nand2
x19 x18o x18on Vdd not1
x20 x14on x16on x18on cny Vdd nor3

x21 g0n cnn x21o Vdd nand2
x22 x21o x21on Vdd not1
x23 p0n g0n x23o Vdd nand2
x24 x23o x23on Vdd not1
x25 x21on x23on cnx Vdd nor2


.control
dc TEMP 85 86 10
print V(cnx) V(cny) V(cnz) V(gn) V(pn)

.endc

.end