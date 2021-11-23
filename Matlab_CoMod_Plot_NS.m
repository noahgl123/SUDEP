%Initialize Work Space ----------------------------------------------------
clc;

%Input subjects in alphabetical order here
s1 = S1.sPAC.DirectPAC;
s2 = S2.sPAC.DirectPAC;
s3 = S3.sPAC.DirectPAC;
s4 = S4.sPAC.DirectPAC;

sz = squeeze(s1);
[m,n] = size(sz); 
for j = 1:n
    for i = 1:m
        avg(:,:,i,j) = (s1(:,:,i,j) + s2(:,:,i,j) + s3(:,:,i,j) + s4(:,:,i,j))/4;
    end
end

figure(1)
x = [0.5, 4]; y = [80,200];
b = squeeze(avg);
c = squeeze(b); 
d1 = transpose(c);
imagesc(x,y,d1)
colorbar; xlabel('Frequency for Phase (Hz)'); ylabel('Frequency for Amplitude (Hz)'); set(gca,'YDir','normal'); 
title('Average BS EEG CoMod for NonSurvivors', 'Delta : High Gamma Band'); colormap('turbo'); caxis([0 0.06]);

figure(2)
d2 = transpose(log(c));
imagesc(x,y,d2)
colorbar; xlabel('Frequency for Phase (Hz)'); ylabel('Frequency for Amplitude (Hz)'); set(gca,'YDir','normal'); 
title('Average BS EEG CoMod for NonSurvivors', 'Delta : High Gamma Band (LOG SCALED)'); colormap('turbo'); caxis([-10 -2]);

%Specific title output to copy/paste:
% 'Average ECOG CoMod for NonSurvivors', 'Full Band
% 'Average BS EEG CoMod for NonSurvivors', 'Full Band
% 'Average ECOG CoMod for NonSurvivors', 'Delta : Low Gamma Band
% 'Average BS EEG CoMod for NonSurvivors', 'Delta : Low Gamma Band
% 'Average ECOG CoMod for NonSurvivors', 'Delta : High Gamma Band
% 'Average BS EEG CoMod for NonSurvivors', 'Delta : High Gamma Band


