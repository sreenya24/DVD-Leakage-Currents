.include ../model/32nm_HP.pm
.param SUPPLY=1

.PARAM Lmin=32n
.PARAM Wmin=32n
.PARAM Ldiff=64n

Va Vdd 0 'SUPPLY'

.TEMP 85

M1 drain gate source body pmos W={Wmin} L={Lmin} AS={Wmin*Ldiff} AD={Wmin*Ldiff} PS={2*(Ldiff+Wmin)} PD={2*(Ldiff+Wmin)}
Vd 	drain	0		1
Vg 	gate	0		0
Vs 	source	alim		0
Vb 	body	1		1
Vdd 	alim	0		0

.control
let voltage=-0.01
let Vddbasic=1.0

while voltage le Vddbasic
  let voltage = voltage + 0.01
  alter Vdd = voltage
  dc TEMP 85 86 10
  print abs(V(alim)) V(drain) V(gate) V(source) V(body) I(Vd) I(Vg) I(Vs) I(Vb)

end

.endc

.end