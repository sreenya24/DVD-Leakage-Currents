.include ../model/32nm_HP.pm
.include ./nor4.sub
.param SUPPLY=1

Va Vdd 0 'SUPPLY'

Vin1 in1 0 0
Vin2 in2 0 0
Vin3 in3 0 1
Vin3 in4 0 1

x in1 in2 in3 in4 out2 Vdd nor4
.op
.control
run
print out2

.endc

.end