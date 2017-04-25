** Digital logic circuits **
.include ../models.sp

** nor logic using resistor transistor logic **
.subckt nor_rtl ina inb out Vcc Gnd
    R1 Vcc out 450
    Ra ina Ba 22k
    Rb inb Bb 22k
    Q1 out Ba Gnd  Q2N2222A
    Q2 out Bb Gnd Q2N2222A
.ends nand_rtl 

.subckt not_rtl ina out Vcc Gnd 
    Rc Vcc out 450
    Ra ina B 22k
    Q1 out B Gnd Q2N2222A 
.ends not_rtl

.subckt or_rtl ina inb out Vcc Gnd
    X1 ina inb out_temp Vcc Gnd nor_rtl
    X2 out_temp out_temp out Vcc Gnd nor_rtl
.ends or_rtl

.subckt nand_rtl ina inb out Vcc Gnd
    X1 ina ina outa Vcc Gnd nor_rtl
    X2  inb inb outb Vcc Gnd nor_rtl
    X3  outa outb out Vcc Gnd or_rtl
.ends nand_rtl

.subckt and_rtl ina inb out Vcc Gnd
    X1 ina ina outa Vcc Gnd nor_rtl
    X2 inb inb outb Vcc Gnd nor_rtl
    X3 outa outb out Vcc Gnd nor_rtl
.ends and_rtl

.subckt xor_rtl ina inb out Vcc Gnd
    X1 ina ina out_a_bar Vcc Gnd nor_rtl
    X2 inb inb out_b_bar Vcc Gnd nor_rtl
    X3 ina inb out_a_nor_b Vcc Gnd nor_rtl
    X4 out_a_bar out_b_bar out_a_and_b Vcc Gnd nor_rtl
    X5 out_a_and_b out_a_nor_b out Vcc Gnd nor_rtl
.ends xor_rtl


