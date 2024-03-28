.include ../model/32nm_HP.pm
.include ./nand2.sub

.TEMP 85

V1 Vdd 0 1

Vin1 in1 0 1
Vin2 in2 0 0

x1 in1 in2 out2 Vdd nand2

x2 out2 out2 out3 Vdd nand2

.control

dc TEMP 85 86 10
print I(V1) I(Vin1) I(Vin2)

.endc

.end