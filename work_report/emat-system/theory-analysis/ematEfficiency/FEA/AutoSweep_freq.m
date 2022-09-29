% signal excited frequency sweep
% author:puhang
% date:2021-12-30
% state:coding
function AutoSweep_freq(model)
I0 = cell(1,3);%exciting pulse
Ipp = 40;%magnitude of exciting pulse
thickness = 3e-3;%thickness of the 
vc = 3000;
delta_f = vc/(2*thickness);
% rough_nn = 50;
% accurate_nn = 100;
% freq_resolution_rough = delta_f/rough_nn;
% freq_resolution_accurate = delta_f/accurate_nn;
% n_rough = 2;
% n_accurate = (1-n_rough/10)*accurate_nn;
% resonant_num = 5;
% row_n = n_rough+n_accurate+2;
f0 = delta_f/4:delta_f/100:delta_f*5;
% for i = 1:resonant_num
% %     f_a = linspace(i*delta_f-freq_resolution_accurate*n_accurate/2,delta_f+freq_resolution_accurate*n_accurate/2,n_accurate+2);
% %     f_r1 = f_a(1)/4:freq_resolution_rough:f_a(1);
% %     f_r2 = f_a(end):freq_resolution_rough:f_a(end)+freq_resolution_rough*n_rough/2;
% %     f_a = f_a(2:end-1);
% %     f0((i-1)*row_n+1:i*row_n)=[f_r1,f_a,f_r2];
% end
T_range = 1./f0;
sup_num = 4;

for j = 1:length(T_range)
    T = T_range(j);
    N_transmit = floor(sup_num*2*thickness/(vc*T))+1;
    model.param.set('f0',num2str(1/T));
    model.param.set('N_transmit',num2str(N_transmit));
    path = ['D:\workspace\matlab\EMAT\period sweep\freq_sweep_',num2str(f0(1)/1e6),'MHz-',num2str(f0(end)/1e6),'MHz'];
    if(exist(path,'dir')==0)
        mkdir(path)
    end
    filename = [path,'\',[num2str(1/(1e6*T)),'MHz'],'.mat'];
    if(exist(filename,'file')==0)
        I0{1,1} = num2str(0);
        I0{1,2} = num2str(T*N_transmit);
        I0{1,3} = [num2str(Ipp),'*sin(w0*x)'];
    
    model.func('pw1').set('pieces',I0);
    tic

    model.study('std1').run;
    %define parameter function
    %define curve
    mm = ceil(tickness/(vc*T/10)); %resolution of radial direction
    nn = 50; %resolution of tangential direction
    r_max = model.param.evaluate('r_max');
    r_min = model.param.evaluate('r_min');
    theta_1 = model.param.evaluate('theta_1');
    s = linspace((90-theta_1)*pi/180,(90+theta_1)*pi/180,nn);
    r = linspace(r_min,r_max,mm);
    x = zeros(1,mm*nn);
    y = zeros(1,mm*nn);
    for i = 1:mm
        x((i-1)*nn+1:nn*i) = r(i)*1e3.*cos(s);
        y((i-1)*nn+1:nn*i) = r(i)*1e3.*sin(s);
    end
    u1 = mphinterp(model,'u','coord',[x;y],'unit','mm','dataset','dset5');
    u2 = mphinterp(model,'u','coord',[x;y],'unit','mm','dataset','dset6');
    v1 = mphinterp(model,'v','coord',[x;y],'unit','mm','dataset','dset5');
    v2 = mphinterp(model,'v','coord',[x;y],'unit','mm','dataset','dset6');
    voltage_11 = mphglobal(model,'mf.VCoil_1','dataset','dset5');
    voltage_12 = mphglobal(model,'mf.VCoil_1','dataset','dset6');
    save(filename,'voltage_11','voltage_12','u1','u2','v1','v2');
    toc

    end
end
end
