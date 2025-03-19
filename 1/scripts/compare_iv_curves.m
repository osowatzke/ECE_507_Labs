%% NMOS
% Mosfet parameters
vt0 = 0.759;
vdsat = 0.202;
lambda = 0.128;
kn = 321.6e-6;
W = 1e-6;
L = 0.15e-6;

% Extract Measured Data
figure(1); clf;
[vds, vgs, ids] = read_iv_data('nmos_iv_data.csv');
plot(vds, ids, 'r');
hold on;

% Extract Model Data
Bn = kn*W/L;
ids = level1_mosfet_model(vds, vgs, vt0, vdsat, lambda, Bn);
plot(vds, ids, 'b');

% Label Plot
xlabel('Vds');
ylabel('Ids (A)');
title('NMOS IV Characteristics');
legendStr = repmat({''},1,length(vgs)+1);
legendStr{1} = 'Reference';
legendStr{end} = 'Level 1 Model';
legend(legendStr{:});

%% PMOS
% Mosfet parameters
vt0 = -0.793;
vdsat = -0.361;
lambda = -0.335;
kn = -63.25e-6;
W = 2e-6;
L = 0.15e-6;

% Extract Measured Data
figure(2); clf;
[vds, vgs, ids] = read_iv_data('pmos_iv_data.csv');
plot(vds, ids, 'r');
hold on;

% Extract Model Data
Bn = kn*W/L;
ids = level1_mosfet_model(vds, vgs, vt0, vdsat, lambda, Bn);
plot(vds, ids, 'b');

% Label Plot
xlabel('Vds');
ylabel('Ids (A)');
title('PMOS IV Characteristics');
legendStr = repmat({''},1,length(vgs)+1);
legendStr{1} = 'Reference';
legendStr{end} = 'Level 1 Model';
legend(legendStr{:});

function [vds, vgs, ids] = read_iv_data(fname)
    data = cell2mat(readcell(fname));
    vds = data(:,2);
    vgs = data(:,4);
    ids = data(:,6);
    vgs_i = unique(vgs);
    vds_i = unique(vds);
    ids_i = zeros(length(vds_i),length(vgs_i));
    for i = 1:length(vgs_i)
        dataSel = (vgs == vgs_i(i));
        [~, idx] = sort(vds(dataSel));
        ids_i(:,i) = ids(dataSel);
        ids_i(:,i) = ids_i(idx,i);
    end
    vds = vds_i(:);
    vgs = vgs_i(:).';
    ids = -ids_i;
end

function ids = level1_mosfet_model(vds, vgs, vt, vdsat, lambda, kn)
    ids = zeros(length(vds),length(vgs));
    for i = 1:length(vgs)
        if abs(vgs(i)) < abs(vt)
            ids(:,i) = 0;
        else
            vgt = vgs(i) - vt;
            if sign(vt) < 0
                vmin = max([vgt*ones(size(vds.')); vds.'; vdsat*ones(size(vds.'))]);
            else
                vmin = min([vgt*ones(size(vds.')); vds.'; vdsat*ones(size(vds.'))]);
            end
            ids(:,i) = kn*(vgt*vmin - vmin.^2/2).*(1+lambda*vds.');
        end
    end
end