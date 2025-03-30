v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -360 20 -360 40 {lab=GND}
N -360 -60 -360 -40 {lab=Vdd}
N -280 20 -280 40 {lab=GND}
N -280 -60 -280 -40 {lab=Vin}
N 34 0 119 0 {lab=Vout}
N -75 70 -75 90 {lab=GND}
C {vsource.sym} -360 -10 0 0 {name=Vdd value=1.8 savecurrent=true}
C {gnd.sym} -360 40 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -360 -60 0 0 {name=Vdd1 sig_type=std_logic lab=Vdd}
C {code_shown.sym} -449 -230 0 0 {name=VTC only_toplevel=false value=".lib /opt/SkyWater/skywater-pdk/installers/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.op
.save all
.end"}
C {vsource.sym} -280 -10 0 0 {name=Vin value=0.9 savecurrent=true}
C {gnd.sym} -280 40 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -280 -60 0 0 {name=Vin1 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 119 0 0 1 {name=Vout sig_type=std_logic lab=Vout}
C {lab_wire.sym} -70 -70 0 0 {name=Vdd2 sig_type=std_logic lab=Vdd}
C {norlab.sym} -110 150 0 0 {name=x2}
C {gnd.sym} -75 90 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -147 26 2 1 {name=Vin3 sig_type=std_logic lab=Vin}
C {lab_wire.sym} -149 -28 2 1 {name=Vin2 sig_type=std_logic lab=Vin}
