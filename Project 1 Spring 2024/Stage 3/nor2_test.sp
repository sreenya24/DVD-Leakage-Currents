.include ../model/32nm_HP.pm
.include ./nor2.sub
.param SUPPLY=1

Va Vdd 0 'SUPPLY'

Vin1 in1 0 1
Vin2 in2 0 0

x1 in1 in2 out2 Vdd nor2
.op
.control
run
print out2

.endc

.end