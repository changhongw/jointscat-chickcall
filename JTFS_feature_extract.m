clear all;clc
addpath(genpath('./chickcall_dataset/')) % dataset
addpath(genpath('../jointscat-chickcall/')) %
run 'addpath_scatnet.m' % Scat code
tic

fid=fopen('file_names.txt'); 
tline = fgetl(fid);
file_names = []; k=1;
while ischar(tline)
    file_names{k} = tline; 
    k = k+1;
    tline = fgetl(fid);
end
fclose(fid);

%% joint scattering hyperparameter
T = 2^14; 
time_filt_opt.Q = [16 2];
timeModuRateMax = 50; % Hz, temporal modulation range

time_filt_opt.filter_type = {'morlet_1d','morlet_1d'};
time_filt_opt.J = T_to_J([T T],time_filt_opt);
time_scat_opt.M = 2;
time_scat_opt.oversampling = 2;

freq_filt_opt.Q = 2;
freq_filt_opt.filter_type = {'morlet_1d'};
freq_scat_opt.M = 1;

%% extract joint scattering feature for each recording
fileFeatures = [];
for k=1:length(file_names)
    [k, length(file_names)]
    [x,fs] = audioread(file_names{k}); x = mean(x,2); 
    [Wop, filters] = joint_tf_wavelet_factory_1d(length(x),time_filt_opt,freq_filt_opt,time_scat_opt);
    S = log_scat(joint_renorm_scat(scat(x, Wop)));

    moduTime_center = filters{1, 2}.psi.meta.center/3.14/2*fs;
    [val, posT2nd] = find(moduTime_center <= timeModuRateMax);
    temp_idx = arrayfun( @(x)( find(posT2nd==x) ), S{1, 3}.meta.j(end,:),...
        'UniformOutput', false);
    moduTime_idx = find(~cellfun(@isempty,temp_idx));
    feature.signal = S{1, 3}.signal(moduTime_idx);
    feature.meta.j = S{1, 3}.meta.j(:,moduTime_idx);
    feature.meta.fr_j = S{1, 3}.meta.fr_j(:,moduTime_idx);
    jointScatFeature = [feature.signal{:}].';
    
    fileFeatures{k} = jointScatFeature;
    clear Wop filters jointScatFeature feature S x
end
cal_time = toc
save('JTFS_feature.mat','fileFeatures', 'cal_time');
