v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -120 -60 -90 -60 {lab=A}
N -120 -60 -120 30 {lab=A}
N -120 30 -90 30 {lab=A}
N -50 -30 -50 -0 {lab=VOUT}
N -50 -130 -50 -90 {lab=VDD}
N -50 60 -50 90 {lab=GND}
N -160 -20 -120 -20 {lab=A}
N -50 -20 -0 -20 {lab=VOUT}
N -50 -90 -50 -60 {lab=VDD}
N -50 30 -50 60 {lab=GND}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -70 -60 0 0 {name=M1
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -70 30 0 0 {name=M2
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {ipin.sym} -160 -20 0 0 {name=p1 lab=A
}
C {ipin.sym} -50 -130 1 0 {name=p2 lab=VDD
}
C {ipin.sym} -50 90 3 0 {name=p3 lab=GND
}
C {opin.sym} 0 -20 0 0 {name=p4 lab=VOUT
}
