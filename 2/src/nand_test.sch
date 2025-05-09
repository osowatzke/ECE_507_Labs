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
N 40 70 40 90 {lab=GND}
N 150 0 220 0 {lab=Vout}
C {vsource.sym} -360 -10 0 0 {name=Vdd value=1.8 savecurrent=true}
C {gnd.sym} -360 40 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -360 -60 0 0 {name=Vdd1 sig_type=std_logic lab=Vdd}
C {code_shown.sym} -450 -230 0 0 {name="Power Analysis" only_toplevel=false value=".lib /opt/SkyWater/skywater-pdk/installers/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 0.02n 40n
.save all
.end"}
C {vsource.sym} -280 -10 0 0 {name=Vin value="pulse(0 1.8 0 0.1n 0.1n 10n 20n 10)" savecurrent=true}
C {gnd.sym} -280 40 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -280 -60 0 0 {name=Vin1 sig_type=std_logic lab=Vin}
C {nandlab.sym} 40 0 0 0 {name=x1}
C {lab_wire.sym} -40 20 2 1 {name=Vin2 sig_type=std_logic lab=Vin}
C {lab_wire.sym} -40 -20 0 0 {name=Vdd3 sig_type=std_logic lab=Vdd
}
C {lab_wire.sym} 40 -70 0 0 {name=Vdd2 sig_type=std_logic lab=Vdd}
C {gnd.sym} 40 90 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 220 0 2 0 {name=Vout sig_type=std_logic lab=Vout}
C {parax_cap.sym} 180 10 0 0 {name=C1 gnd=0 value=4f m=1}
