.include ../model/32nm_HP.pm
.include ./nand2.sub


V1 Vdd 0 1

Vin1 in1 0 1
Vin2 in2 0 0

x1 in1 in2 out2 Vdd nand2

.control

dc TEMP 85 86 10
print out2

.endc

.end