% Common Transistor Parameters
L = 0.15e-6;
vdd = 1.8;

% NMOS Transistor Parameters
vt0_n = 0.65;
vdsat_n = 0.3948;
lambda_n = 0.1289;
kn = 164.1e-6;
Wn = 1e-6;

% PMOS Transistor Parameters
vt0_p = -0.65;
vdsat_p = -0.6518;
lambda_p = -0.3355;
kp = 35.11e-6;
Wp = 2e-6;

% Solve for vm
syms vm;
vds = vm - vdd;
ids_p = -kp*Wp/L*vdsat_p*(vds - vt_p - vdsat_p/2)*(1+lambda_p*vds);
vds = vm;
ids_n = kn*Wn/L*vdsat_n*(vds - vt_n - vdsat_n/2)*(1+lambda_n*vds);
vm = double(vpasolve(ids_p + ids_n));
vm = vm(0 <= vm & vm <= vdd)