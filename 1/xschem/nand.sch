v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -160 -100 -160 -60 {lab=Vout}
N -160 90 -160 130 {lab=GND}
N -160 0 -160 30 {lab=#net1}
N -160 -230 -160 -200 {lab=Vdd}
N -240 -100 -80 -100 {lab=Vout}
N -160 -80 -100 -80 {lab=Vout}
N -240 -200 -240 -160 {lab=Vdd}
N -80 -200 -80 -160 {lab=Vdd}
N -240 -200 -80 -200 {lab=Vdd}
N -380 -240 -340 -240 {lab=A}
N -380 -200 -340 -200 {lab=B}
C {/opt/SkyWater/skywater-pdk/installers/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet3_01v8.sym} -180 -30 0 0 {name=M1
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
C {/opt/SkyWater/skywater-pdk/installers/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet3_01v8.sym} -260 -130 0 0 {name=M2
W=2
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
C {opin.sym} -100 -80 0 0 {name=Y lab=Y
}
C {ipin.sym} -160 130 0 0 {name=GND lab=GND}
C {ipin.sym} -380 -240 0 0 {name=A1 lab=A}
C {/opt/SkyWater/skywater-pdk/installers/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet3_01v8.sym} -180 60 0 0 {name=M3
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
C {/opt/SkyWater/skywater-pdk/installers/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet3_01v8.sym} -100 -130 0 0 {name=M4
W=2
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
C {ipin.sym} -160 -230 0 0 {name=Vdd1 lab=Vdd
}
C {lab_wire.sym} -340 -240 0 1 {name=A sig_type=std_logic lab=A}
C {ipin.sym} -380 -200 0 0 {name=B lab=B}
C {lab_wire.sym} -340 -200 0 1 {name=B1 sig_type=std_logic lab=B}
C {lab_pin.sym} -280 -130 0 0 {name=A2 sig_type=std_logic lab=A}
C {lab_pin.sym} -200 -30 0 0 {name=A3 sig_type=std_logic lab=A}
C {lab_pin.sym} -200 60 0 0 {name=B2 sig_type=std_logic lab=B}
C {lab_pin.sym} -120 -130 0 0 {name=B3 sig_type=std_logic lab=B}
