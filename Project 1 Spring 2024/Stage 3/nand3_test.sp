.include ../model/32nm_HP.pm
.include ./nand3_2.sub
.param SUPPLY=1

Va Vdd 0 'SUPPLY'

Vin1 in1 0 0
Vin2 in2 0 0
Vin3 in3 0 1

x in1 in2 in3 out2 Vdd nand3_2
.op
.control
run
print out2

.endc

.end