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

%Output file name and max value from average matrix
filename = S1.Comment;
max = max(avg, [], 'all');

%Output average and log average matricies for subject data
avgT = transpose(squeeze(avg));
logavgT = transpose(squeeze(log(avg)));

%Save .mat file containing filename, max value, average and log average matricies
variables.Filename = filename;
variables.Max = max;
variables.AverageMtx = avgT;
variables.LogAverageMtx = logavgT;
save('NonSurvivor_BSEEG_DHGBand.mat', 'variables');


