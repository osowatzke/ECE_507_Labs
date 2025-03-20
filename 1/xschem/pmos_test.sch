v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -160 -20 -160 10 {lab=Vds}
N -160 -110 -160 -80 {lab=GND}
N -160 -110 -60 -110 {lab=GND}
N -60 -110 -60 -80 {lab=GND}
N -160 69 -160 99 {lab=GND}
N 0 30 0 60 {lab=GND}
N -260 -50 -200 -50 {lab=Vgs}
N -260 30 -260 60 {lab=GND}
N -260 -50 -260 -30 {lab=Vgs}
N -163 -50 -100 -50 {lab=Vbs}
C {vsource.sym} -160 40 0 0 {name=Vds value=-1m savecurrent=true}
C {gnd.sym} -160 99 0 0 {name=l2 lab=GND}
C {vsource.sym} -260 0 0 1 {name=Vgs value=-1.8 savecurrent=true}
C {code_shown.sym} -380 -210 0 0 {name=tran only_toplevel=false value=".lib /opt/SkyWater/skywater-pdk/installers/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.dc Vds -1.8 0 1m Vgs -1.8 0 0.2
.save all
.end"}
C {lab_wire.sym} -260 -50 0 0 {name=Vgs1 sig_type=std_logic lab=Vgs}
C {vsource.sym} 0 0 0 0 {name=Vbs value=0 savecurrent=true}
C {gnd.sym} 0 60 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 0 -30 0 1 {name=Vbs1 sig_type=std_logic lab=Vbs}
C {/opt/SkyWater/skywater-pdk/installers/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -180 -50 0 0 {name=M2
W=2
L=0.15
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
C {gnd.sym} -260 60 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -160 10 0 1 {name=Vds2 sig_type=std_logic lab=Vds}
C {gnd.sym} -60 -80 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -100 -50 0 1 {name=Vbs3 sig_type=std_logic lab=Vbs}
