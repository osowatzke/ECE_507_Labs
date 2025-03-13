v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -160 100 -160 120 {lab=GND}
N -160 -80 -160 -60 {lab=GND}
N -160 20 -160 40 {lab=Vin}
N -160 -160 -160 -140 {lab=Vdd}
N 80 50 80 70 {lab=GND}
C {inverter.sym} 100 0 0 0 {name=x1}
C {vsource.sym} -160 -110 0 0 {name=Vdd value=1.8 savecurrent=true}
C {vsource.sym} -160 70 0 0 {name=Vin value=1.8 savecurrent=true}
C {gnd.sym} -160 120 0 0 {name=l1 lab=GND}
C {gnd.sym} -160 -60 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -160 20 0 0 {name=Vin3 sig_type=std_logic lab=Vin
}
C {lab_wire.sym} -160 -160 0 0 {name=Vdd1 sig_type=std_logic lab=Vdd
}
C {lab_pin.sym} 80 -50 0 1 {name=Vdd2 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 0 0 0 0 {name=Vin2 sig_type=std_logic lab=Vin}
C {gnd.sym} 80 70 0 0 {name=l3 lab=GND}
C {code_shown.sym} -160 -270 0 0 {name=VTC only_toplevel=false value=".lib /opt/SkyWater/skywater-pdk/installers/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.save @m.x1.xm2.msky130_fd_pr__pfet_01v8[vdsat]
.dc Vin 0 2 1m
.save all
.end"
}
C {opin.sym} 180 0 0 0 {name=Vout lab=Vout}
