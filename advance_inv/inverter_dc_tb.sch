v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {vsource.sym} -210 20 0 0 {name=Vdd value=1.8 savecurrent=false}
C {vsource.sym} -150 20 0 0 {name=Vin value=0 savecurrent=false}
C {gnd.sym} -150 50 0 0 {name=l1 lab=0}
C {gnd.sym} -210 50 0 0 {name=l2 lab=0}
C {gnd.sym} -30 -10 0 0 {name=l3 lab=0}
C {inverter.sym} 20 -50 0 0 {name=x1}
C {lab_pin.sym} -210 -10 1 0 {name=p1 sig_type=std_logic lab=Vdd
}
C {lab_pin.sym} -30 -90 1 0 {name=p2 sig_type=std_logic lab=Vdd
}
C {lab_pin.sym} -90 -50 0 0 {name=p3 sig_type=std_logic lab=Vin
}
C {lab_pin.sym} -150 -10 1 0 {name=p4 sig_type=std_logic lab=Vin}
C {opin.sym} 70 -50 0 0 {name=p5 lab=Vout
}
C {devices/code.sym} -240 -190 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {code_shown.sym} 130 -130 0 0 {name=NGSPICE
only_toplevel=true
value="
.option savecurrents
.control
save all
dc Vin 0 1.8 0.1
plot v(Vin) v(Vout)
.endc
"}
