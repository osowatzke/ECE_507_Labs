v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 30 40 60 {lab=GND}
N 40 -60 40 -30 {lab=Vds}
N 40 -60 140 -60 {lab=Vds}
N 140 -60 140 -30 {lab=Vds}
N 140 30 140 60 {lab=GND}
N -60 60 -60 90 {lab=GND}
N -60 0 0 0 {lab=Vgs}
N 240 30 240 60 {lab=GND}
C {/opt/SkyWater/skywater-pdk/installers/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet3_01v8.sym} 20 0 0 0 {name=M1
W=1
L=0.15
body=Vbs
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
C {gnd.sym} 40 60 0 0 {name=l1 lab=GND}
C {vsource.sym} 140 0 0 0 {name=Vds value=1.8 savecurrent=true}
C {gnd.sym} 140 60 0 0 {name=l2 lab=GND}
C {vsource.sym} -60 30 0 0 {name=Vgs value=0.7 savecurrent=true}
C {gnd.sym} -60 90 0 0 {name=l3 lab=GND}
C {code_shown.sym} -270 -170 0 0 {name=tran only_toplevel=false value=".lib /opt/SkyWater/skywater-pdk/installers/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
//.include ../scripts/measure_vt.ngs
.dc Vgs 0 1.8 1m
.save all
.end"}
C {lab_wire.sym} -60 0 0 0 {name=Vgs1 sig_type=std_logic lab=Vgs}
C {lab_wire.sym} 140 -30 0 1 {name=Vds1 sig_type=std_logic lab=Vds}
C {vsource.sym} 240 0 0 0 {name=Vbs value=0 savecurrent=true}
C {gnd.sym} 240 60 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 240 -30 0 1 {name=Vbs1 sig_type=std_logic lab=Vbs}
