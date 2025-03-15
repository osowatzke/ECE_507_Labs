v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -190 90 -190 130 {lab=GND}
N -120 -30 -120 0 {lab=Y}
N -190 -240 -190 -210 {lab=Vdd}
N -190 -50 -130 -50 {lab=Y}
N -380 -240 -340 -240 {lab=A}
N -380 -200 -340 -200 {lab=B}
N -190 -150 -190 -120 {lab=#net1}
N -190 -60 -190 -30 {lab=Y}
N -250 -30 -250 0 {lab=Y}
N -250 -30 -120 -30 {lab=Y}
N -250 60 -250 90 {lab=GND}
N -120 60 -120 90 {lab=GND}
N -250 90 -120 90 {lab=GND}
C {/opt/SkyWater/skywater-pdk/installers/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet3_01v8.sym} -270 30 0 0 {name=M1
W=1
L=0.15
body=GND
nf=1
mult=1
ad="'int((@nf + 1)/2) * @W / @nf * 0.29'" 
pd="'2*int((@nf + 1)/2) * (@W / @nf + 0.29)'"
as="'int((@nf + 2)/2) * @W / @nf * 0.29'" 
ps="'2*int((@nf + 2)/2) * (@W / @nf + 0.29)'"
nrd="'0.29 / @W '" nrs="'0.29 / @W '"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {/opt/SkyWater/skywater-pdk/installers/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet3_01v8.sym} -210 -180 0 0 {name=M2
W=4
L=0.15
body=VDD
nf=1
mult=1
ad="'int((@nf + 1)/2) * @W / @nf * 0.29'" 
pd="'2*int((@nf + 1)/2) * (@W / @nf + 0.29)'"
as="'int((@nf + 2)/2) * @W / @nf * 0.29'" 
ps="'2*int((@nf + 2)/2) * (@W / @nf + 0.29)'"
nrd="'0.29 / @W '" nrs="'0.29 / @W '"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {opin.sym} -130 -50 0 0 {name=Y lab=Y
}
C {ipin.sym} -190 130 0 0 {name=GND lab=GND}
C {ipin.sym} -380 -240 0 0 {name=A1 lab=A}
C {/opt/SkyWater/skywater-pdk/installers/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet3_01v8.sym} -140 30 0 0 {name=M3
W=1
L=0.15
body=GND
nf=1
mult=1
ad="'int((@nf + 1)/2) * @W / @nf * 0.29'" 
pd="'2*int((@nf + 1)/2) * (@W / @nf + 0.29)'"
as="'int((@nf + 2)/2) * @W / @nf * 0.29'" 
ps="'2*int((@nf + 2)/2) * (@W / @nf + 0.29)'"
nrd="'0.29 / @W '" nrs="'0.29 / @W '"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {/opt/SkyWater/skywater-pdk/installers/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet3_01v8.sym} -210 -90 0 0 {name=M4
W=4
L=0.15
body=VDD
nf=1
mult=1
ad="'int((@nf + 1)/2) * @W / @nf * 0.29'" 
pd="'2*int((@nf + 1)/2) * (@W / @nf + 0.29)'"
as="'int((@nf + 2)/2) * @W / @nf * 0.29'" 
ps="'2*int((@nf + 2)/2) * (@W / @nf + 0.29)'"
nrd="'0.29 / @W '" nrs="'0.29 / @W '"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} -190 -240 0 0 {name=Vdd1 lab=Vdd
}
C {lab_wire.sym} -340 -240 0 1 {name=A sig_type=std_logic lab=A}
C {ipin.sym} -380 -200 0 0 {name=B lab=B}
C {lab_wire.sym} -340 -200 0 1 {name=B1 sig_type=std_logic lab=B}
C {lab_pin.sym} -230 -180 0 0 {name=A2 sig_type=std_logic lab=A}
C {lab_pin.sym} -290 30 0 0 {name=A3 sig_type=std_logic lab=A}
C {lab_pin.sym} -160 30 0 0 {name=B2 sig_type=std_logic lab=B}
C {lab_pin.sym} -230 -90 0 0 {name=B3 sig_type=std_logic lab=B}
