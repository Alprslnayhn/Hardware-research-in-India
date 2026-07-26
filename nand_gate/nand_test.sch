v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {nand.sym} 60 -40 0 0 {name=x1}
C {vsource.sym} -220 30 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -170 140 0 0 {name=V2 value="PULSE (0 1.8 0 10p 10p 10n 20n)" savecurrent=false}
C {vsource.sym} -120 30 0 0 {name=V3 value="PULSE (0 1.8 0 10p 10p 20n 40n)" savecurrent=false}
C {gnd.sym} -220 60 0 0 {name=l1 lab=0}
C {gnd.sym} -170 170 0 0 {name=l2 lab=0}
C {gnd.sym} -120 60 0 0 {name=l3 lab=0}
C {lab_pin.sym} -90 -50 0 0 {name=p1 sig_type=std_logic lab=A
}
C {lab_pin.sym} -90 -30 0 0 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} 210 -50 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 210 -30 2 0 {name=p4 sig_type=std_logic lab=Y}
C {lab_pin.sym} -120 0 2 0 {name=p5 sig_type=std_logic lab=B}
C {lab_pin.sym} -220 0 0 0 {name=p6 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} -170 110 0 0 {name=p7 sig_type=std_logic lab=A}
C {/home/swartz/xschem/sky130_fd_pr/corner.sym} 100 40 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} -200 -160 0 0 {name=s1 only_toplevel=false value=".tran 0.1n 100n
.save all"}
