%Initialize Work Space ----------------------------------------------------
clc;

%Create plot from imported variables.mat file
figure(1)
x = [0.5, 1.5]; y = [30,60];
d1 = variables.AverageMtx;
imagesc(x,y,d1)
colorbar; xlabel('Frequency for Phase (Hz)'); ylabel('Frequency for Amplitude (Hz)'); set(gca,'YDir','normal'); 
title('Average ECOG CoMod for Survivors', 'fP 0.5-1.5 Hz vs fA 30-60 Hz Band'); colormap('turbo'); caxis([0 0.037]);

%Create log scaled plot from imported variables.mat file
figure(2)
d2 = variables.LogAverageMtx;
imagesc(x,y,d2)
colorbar; xlabel('Frequency for Phase (Hz)'); ylabel('Frequency for Amplitude (Hz)'); set(gca,'YDir','normal'); 
title('Average ECOG CoMod for Survivors', 'fP 0.5-1.5 Hz vs fA 30-60 Hz Band (LOG SCALED)'); colormap('turbo'); caxis([-10 -3.25]);

%Copy and paste shortcuts for naming figures

% Determine Title Output
% WINDOW : x = [0.5, 30]; y = [30,200];
% 'Average ECOG CoMod for Survivors', 'Full Band
% 'Average BS EEG CoMod for Survivors', 'Full Band
% 'Average ECOG CoMod for NonSurvivors', 'Full Band
% 'Average BS EEG CoMod for NonSurvivors', 'Full Band

% WINDOW : x = [0.5, 4]; y = [30,70];
% 'Average ECOG CoMod for Survivors', 'Delta : Low Gamma Band
% 'Average BS EEG CoMod for Survivors', 'Delta : Low Gamma Band
% 'Average ECOG CoMod for NonSurvivors', 'Delta : Low Gamma Band
% 'Average BS EEG CoMod for NonSurvivors', 'Delta : Low Gamma Band

% WINDOW : x = [0.5, 4]; y = [80,200];
% 'Average ECOG CoMod for Survivors', 'Delta : High Gamma Band
% 'Average BS EEG CoMod for Survivors', 'Delta : High Gamma Band
% 'Average ECOG CoMod for NonSurvivors', 'Delta : High Gamma Band
% 'Average BS EEG CoMod for NonSurvivors', 'Delta : High Gamma Band

% WINDOW : x = [0.5, 1.5]; y = [30,60];
% 'Average ECOG CoMod for Survivors', 'fP 0.5-1.5 Hz vs fA 30-60 Hz Band
% 'Average BS EEG CoMod for Survivors', 'fP 0.5-1.5 Hz vs fA 30-60 Hz Band
% 'Average ECOG CoMod for NonSurvivors', 'fP 0.5-1.5 Hz vs fA 30-60 Hz Band
% 'Average BS EEG CoMod for NonSurvivors', 'fP 0.5-1.5 Hz vs fA 30-60 Hz Band






