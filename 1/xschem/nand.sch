v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -160 -90 -160 -60 {lab=Vout}
N -200 -120 -200 -30 {lab=Vin}
N -160 -70 -110 -70 {lab=Vout}
N -160 -180 -160 -150 {lab=Vdd}
N -160 0 -160 40 {lab=GND}
N -240 -70 -200 -70 {lab=Vin}
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
C {/opt/SkyWater/skywater-pdk/installers/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet3_01v8.sym} -180 -120 0 0 {name=M2
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
C {opin.sym} -110 -70 0 0 {name=p2 lab=Vout
}
C {ipin.sym} -160 -180 0 0 {name=Vdd2 lab=Vdd
}
C {ipin.sym} -160 40 0 0 {name=GND lab=GND}
C {ipin.sym} -240 -70 0 0 {name=Vin2 lab=Vin}
