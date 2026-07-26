v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 -90 0 -50 {lab=Y}
N -40 -120 -40 -20 {lab=A}
N -0 -170 -0 -150 {lab=VP}
N -0 10 -0 30 {lab=VN}
N 0 -70 40 -70 {lab=Y}
N -70 -70 -40 -70 {lab=A}
N -0 -120 60 -120 {lab=VP}
N 60 -160 60 -120 {lab=VP}
N -0 -160 60 -160 {lab=VP}
N -0 -20 80 -20 {lab=VN}
N 80 -20 80 20 {lab=VN}
N 0 20 80 20 {lab=VN}
C {xschem/sky130_fd_pr/pfet_01v8.sym} -20 -120 0 0 {name=M1
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
C {xschem/sky130_fd_pr/nfet_01v8.sym} -20 -20 0 0 {name=M2
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
C {iopin.sym} 0 -170 3 0 {name=p1 lab=VP}
C {iopin.sym} 0 30 1 0 {name=p2 lab=VN
}
C {ipin.sym} -70 -70 0 0 {name=p3 lab=A}
C {opin.sym} 40 -70 0 0 {name=p4 lab=Y}
