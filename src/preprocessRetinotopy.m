% (C) Copyright 2020 Remi Gau, Marco Barilari

clear;
clc;

cd(fileparts(mfilename('fullpath')));

addpath(fullfile(fileparts(mfilename('fullpath')), '..'));

initEnv();

% we add all the subfunctions that are in the sub directories
opt = getOptionRetino();

checkDependencies();

%% Run batches

% bidsCopyRawFolder(opt, true);
bidsSpatialPrepro(opt)
anatomicalQA(opt);
bidsResliceTpmToFunc(opt);
functionalQA(opt);
