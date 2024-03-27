.include ../model/32nm_HP.pm
.include ./not1.sub

Vin in 0 1

x1 in out 1 not1

.control

dc TEMP 85 86 10
print out

.endc

.end