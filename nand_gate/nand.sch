v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -60 0 60 0 {lab=y}
N -60 -60 60 -60 {lab=VDD}
N 60 0 60 20 {lab=y}
N 60 80 60 100 {lab=#net1}
N 60 160 60 190 {lab=0}
N 60 130 60 160 {lab=0}
N 60 50 60 80 {lab=#net1}
N 60 0 150 -0 {lab=y}
N -100 -30 -100 130 {lab=b}
N -130 130 -100 130 {lab=b}
N -100 130 20 130 {lab=b}
N 20 -30 20 50 {lab=a}
N -130 50 20 50 {lab=a}
N 60 -60 60 -30 {lab=VDD}
N -60 -60 -60 -30 {lab=VDD}
C {/home/swartz/xschem/sky130_fd_pr/pfet_01v8.sym} -80 -30 0 0 {name=M1
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
C {/home/swartz/xschem/sky130_fd_pr/pfet_01v8.sym} 40 -30 0 0 {name=M2
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
C {/home/swartz/xschem/sky130_fd_pr/nfet_01v8.sym} 40 50 0 0 {name=M3
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
C {/home/swartz/xschem/sky130_fd_pr/nfet_01v8.sym} 40 130 0 0 {name=M4
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
C {ipin.sym} -130 50 0 0 {name=p1 lab=a}
C {ipin.sym} -130 130 0 0 {name=p2 lab=b}
C {opin.sym} 150 0 0 0 {name=p3 lab=y}
C {gnd.sym} 60 190 0 0 {name=l1 lab=0}
C {iopin.sym} 60 -60 3 0 {name=p4 lab=VDD}
