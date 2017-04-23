** Analog circuits **

.include models.sp

*negative rail circuit
.subckt negative_voltage_rail in gnd out Cval1=100uF Cval2=100uF
    C1 in 1 {Cval1}
    D1 1 gnd D1N4004
    D2 out 1 D1N4004
    C2 out gnd {Cval2}
.ends negative_voltage_rail 

**rectifier circuit
.subckt hw_rectifier in out gnd
    D1 in out D1N4004
    C1 out gnd 100u
.ends hw_rectifier

.subckt fw_rectifier in gnd outa outc Cval=100uF
    D1 in outa D1N4004
    D2 outc gnd D1N4004
    D3 gnd outa D1N4004
    D4 outc in D1N4004
    C1 outa outc {Cval}
    
.ends fw_rectifier 

** Subcircuit for operational amplifier **
** small signal model, ideal model **
.subckt ideal_amp ina inc outa outc
    Rin ina inc 2Meg
    Cin ina inc 50p
    E1 outc 1 ina inc 10k
    Rout 1 outa 8
.ends ideal_amp
