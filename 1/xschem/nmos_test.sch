v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -200 30 -200 60 {lab=GND}
N -200 -60 -200 -30 {lab=Vds}
N -200 -60 -100 -60 {lab=Vds}
N -100 -60 -100 -30 {lab=Vds}
N -100 30 -100 60 {lab=GND}
N -300 60 -300 90 {lab=GND}
N -300 0 -240 0 {lab=Vgs}
N 0 30 0 60 {lab=GND}
C {/opt/SkyWater/skywater-pdk/installers/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet3_01v8.sym} -220 0 0 0 {name=M1
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
C {gnd.sym} -200 60 0 0 {name=l1 lab=GND}
C {vsource.sym} -100 0 0 0 {name=Vds value=0.9 savecurrent=true}
C {gnd.sym} -100 60 0 0 {name=l2 lab=GND}
C {vsource.sym} -300 30 0 0 {name=Vgs value=1.8 savecurrent=true}
C {gnd.sym} -300 90 0 0 {name=l3 lab=GND}
C {code_shown.sym} -370 -170 0 0 {name=tran only_toplevel=false value=".lib /opt/SkyWater/skywater-pdk/installers/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.dc Vds 0 1.8 1m Vgs 0 1.8 0.2
.save all
.end"
}
C {lab_wire.sym} -300 0 0 0 {name=Vgs1 sig_type=std_logic lab=Vgs}
C {lab_wire.sym} -100 -30 0 1 {name=Vds1 sig_type=std_logic lab=Vds}
C {vsource.sym} 0 0 0 0 {name=Vbs value=0 savecurrent=true}
C {gnd.sym} 0 60 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 0 -30 0 1 {name=Vbs1 sig_type=std_logic lab=Vbs}
