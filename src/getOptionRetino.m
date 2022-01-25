% (C) Copyright 2020 Remi Gau, Marco Barilari

function opt = getOptionRetino()
    % returns a structure that contains the options chosen by the user to run
    % slice timing correction, pre-processing, FFX, RFX.


    opt = [];


    % task to analyze
    opt.taskName = 'retinotopyDriftingBarDot';

    opt.space = 'individual';
    opt.useFieldmaps = false;

    % The directory where the data are located
    opt.dataDir = abspath(fullfile(fileparts(mfilename('fullpath')), ...
        '..', '..', '..',  'raw'));



  %% DO NOT TOUCH
  opt = checkOptions(opt);
  saveOptions(opt);

end
