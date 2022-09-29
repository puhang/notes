clc;close all;
IP = 'localhost';
username = 'puhang';
password = 'ph123PH789';

% IP = '192.168.3.9';
% username = 'liufulu';
% password = '19950525';

if(exist('ModelUtil','class')==0)
    cd D:\installation\COMSOL55\Multiphysics\mli;
    mphstart(IP,2036,username,password);
    import com.comsol.model.util.*
    ModelUtil.showProgress(true)
end
if(exist('model','var')==0)
        cd D:\workspace\comsol;
        model = mphopen('EMAR_2D_v1.3.mph','EMAR_2D_1');
end
cd 'D:\workspace\matlab\EMAT\period sweep';
EMAR_single_freq(model);
ModelUtil.disconnect;
%ModelUtil.remove('Model')
%ModelUtil.clear
%mphtags -show