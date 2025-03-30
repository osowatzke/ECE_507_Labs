%% Parameter Definitions
% Common Transistor Parameters
L = 0.15e-6;
vdd = 1.8;

% NMOS Transistor Parameters
vt0_n = 0.759;
vdsat_n = 0.202;
lambda_n = 0.128;
kn = 321.6e-6;
Wn = 2e-6;

% PMOS Transistor Parameters
vt0_p = -0.793; %68; %-0.65;
vdsat_p = -0.361; %-0.6518;
lambda_p = -0.335;
kp = 63.25e-6; %35.11e-6;
Wp = 4e-6;

%% Case 1: A=1, B=0->1
% Solve for vm
syms vm vx;
vds = vm - vdd;
vgs = vm - vdd;
% ids_p = -kp*Wp/L*vdsat_p*(vgs - vt_p - vdsat_p/2)*(1+lambda_p*vds);
vds = vm - vx;
vds = vm;
vgs = vm;
% ids_n = kn*Wn/L*vdsat_n*(vgs - vt_n - vdsat_n/2)*(1+lambda_n*vds);
fsolve(ids_p = ids_n)
double(vpasolve(ids_p + ids_n))

% ids_p = @(vm) -kp*Wp/L*vdsat_p*((vm-vdd) - vt0_p - vdsat_p/2).*(1+lambda_p*(vm-vdd));
% ids_n = @(vm) kn*Wn/L*vdsat_n*(vm - vt0_n - vdsat_n/2).*(1+lambda_n*vm);
f = @(vm)1e6*(ids_p(vm) + ids_n(vm))
% options = optimoptions('fsolve',...
%     'FunctionTolerance',1e-24,'StepTolerance',1e-18,'Display','iter');
fsolve(f,0.3)

% ids_p = @(vm) -kp*Wp/L*vdsat_p*((vm-vdd) - vt0_p - vdsat_p/2).*(1+lambda_p*(vm-vdd));
ids_n1 = @(vm, vx) kn*Wn/L*vdsat_n*(vm - vt0_n - vx/2).*(1+lambda_n*vx);
ids_n2 = @(vm, vx) kn*Wn/L*vdsat_n*(vm-vx - vt0_n - (vm-vx)/2).*(1+lambda_n*(vm-vx));
f1 = @(vm,vx) ids_n1(vm,vx) - ids_n2(vm,vx);
f2 = @(vm,vx) ids_p(vm) + ids_n1(vm,vx);
f = @(vm,vx)1e6*([f1(vm,vx); f2(vm,vx)]);
f = @(x)f(x(1),x(2));
% options = optimoptions('fsolve',...
%     'FunctionTolerance',1e-24,'StepTolerance',1e-18,'Display','iter');
lsqnonlin(f,[0;0],[0;0],[vdd;vdd],ones(1,2),1e-12)

% ids_p = @(vm) -kp*Wp/L*((vm-vdd) - vt0_p).^2.*(1+lambda_p*(vm-vdd));
% ids_n = @(vm) kn*Wn/L*(vm - vt0_n).^2.*(1+lambda_n*vm);
fun = @(vm)1e6*(ids_p(vm) + ids_n(vm));
vm = fsolve(fun,0.9)

Bn = kn*Wn/L;
Bp = kp*Wp/L;
g = Bp*(vm-vdd-vt0_p)*(1+lambda_p*(vm-vdd)) - Bn*(vm-vt0_n)*(1+lambda_n*vm);
g = g/(Bn/2*(vm-vt0_n)^2*lambda_n - Bp/2*(vm-vdd-vt0_p)^2*lambda_p)
vih = vm - vm/g
vil = vm + (vdd - vm)/g

Bn = kn*Wn/L;
Bp = kp*Wp/L;

nmos_params = struct(...
    'vt', vt0_n,...
    'B', Bn,...
    'vdd', vdd,...
    'lambda', lambda_n);

pmos_params = struct(...
    'vt', vt0_p,...
    'B', Bp,...
    'vdd', vdd,...
    'lambda', lambda_p);

vin_arr = 0.8:0.001:0.9;
vout = zeros(size(vin_arr));
for i = 1:length(vin_arr)
    vin = vin_arr(i);
    fun = @(vout)1e6*(ids_p(vin, vout, pmos_params) + ids_n(vin, vout, nmmos_params));
    % ids_p = @(vout) -kp*Wp/L/2*((vin-vdd) - vt0_p).^2.*(1+lambda_p*(vout-vdd));
    % ids_n = @(vout) kn*Wn/L/2*(vin - vt0_n).^2.*(1+lambda_n*vout);
    vout(i) = fzero(fun,0); %fzero(@(x)1e6*(ids_p(x)+ids_n(x)),0);
end

function i = ids_p(vin, vout, params)
    vgs = vin - params.vdd;
    vds = vout - params.vdd;
    if vgs > params.vt
        i = 0;
    else
        i = -params.B*(vgs - params.vt).^2.*(1+params.lambda*vds);
    end
end

function i = ids_n(vin, vout, params)
    vgs = vin;
    vds = vout;
    if vgs < params.vt
        i = 0;
    else
        i = params.B*(vgs - params.vt).^2.*(1+params.lambda*vds);
    end
end
% fsolve(f,[0.8;0.4])


% ids_n1 = kn*Wn/L*(vgs - vt_n - vds/2)*(1+lambda_n*vds);
% vds = vx;
% ids_n2 = kn*Wn/L*vds*(vgs - vt_n - vds/2)*(1+lambda_n*vds);
% val = solve(ids_n1 - ids_n2, vx);
% ids_n1 = subs(ids_n1, vx, val);
% vm = double(solve(2*ids_p + ids_n1));

% vds = vm;
% ids_n = kn*Wn/L*vdsat_n*(vds - vt_n - vdsat_n/2)*(1+lambda_n*vds);
% vm = double(vpasolve(2*ids_p + ids_n));
% vm = vm(0 <= vm & vm <= vdd)

%% Case 2: A=0->1, B=1  