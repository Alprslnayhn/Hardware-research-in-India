v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 250 -190 320 -190 {lab=VOUT}
C {unv.sym} 100 -170 0 0 {name=x1}
C {vsource.sym} -150 -90 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -100 -90 0 0 {name=V2 value="PULSE (0 1.2 0 1n 1n 1u 2u)" savecurrent=false}
C {gnd.sym} -150 -60 0 0 {name=l1 lab=0}
C {gnd.sym} -100 -60 0 0 {name=l2 lab=0}
C {gnd.sym} -50 -150 1 0 {name=l3 lab=0}
C {lab_pin.sym} -150 -120 1 0 {name=p1 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} -100 -120 1 0 {name=p2 sig_type=std_logic lab=A

}
C {lab_pin.sym} -50 -170 0 0 {name=p3 sig_type=std_logic lab=A

}
C {lab_pin.sym} -50 -190 0 0 {name=p4 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 320 -190 2 0 {name=p5 sig_type=std_logic lab=VOUT

}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/corner.sym} 200 -40 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 10 -20 0 0 {name=s1 only_toplevel=false value="
.control
tran 1u 10u
.endc
"}
