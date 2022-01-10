% Initialize work space ----------------------------------------------------
clc;

% Input surviving subjects in alphabetical order here
s1 = S1.sPAC.DirectPAC;
s2 = S2.sPAC.DirectPAC;
s3 = S3.sPAC.DirectPAC;
s4 = S4.sPAC.DirectPAC;
s5 = S5.sPAC.DirectPAC;
s6 = S6.sPAC.DirectPAC;
s7 = S7.sPAC.DirectPAC;

% Input nonsurviving subjects in alphabetical order here
ns1 = NS1.sPAC.DirectPAC;
ns2 = NS2.sPAC.DirectPAC;
ns3 = NS3.sPAC.DirectPAC;
ns4 = NS4.sPAC.DirectPAC;
    
sz = squeeze(s1);
[m,n] = size(sz); 
for j = 1:n
    for i = 1:m
        avg_s(:,:,i,j) = (s1(:,:,i,j) + s2(:,:,i,j) + s3(:,:,i,j) + s4(:,:,i,j)+ s5(:,:,i,j) + s6(:,:,i,j) + s7(:,:,i,j))/7;
        avg_ns(:,:,i,j) = (ns1(:,:,i,j) + ns2(:,:,i,j) + ns3(:,:,i,j) + ns4(:,:,i,j))/4;
    end
end

%Output file name and max value from average matrix
filename_s = S1.Comment;
filename_ns = NS1.Comment;

max_s = max(avg_s, [], 'all');
max_ns = max(avg_ns, [], 'all');

%Output average and log average matricies for subject data
avgT_s = transpose(squeeze(avg_s));
avgT_ns = transpose(squeeze(avg_ns));

logavgT_s = transpose(squeeze(log(avg_s)));
logavgT_ns = transpose(squeeze(log(avg_ns)));

%Save .mat file containing filename, max value, average and log average matricies
suvivor_variables.Filename = filename_s;
suvivor_variables.Max = max_s;
suvivor_variables.AverageMtx = avgT_s;
suvivor_variables.LogAverageMtx = logavgT_s;
save('Survivor_BSEEG_DHGBand.mat', 'suvivor_variables');

nonsuvivor_variables.Filename = filename_ns;
nonsuvivor_variables.Max = max_ns;
nonsuvivor_variables.AverageMtx = avgT_ns;
nonsuvivor_variables.LogAverageMtx = logavgT_ns;
save('Nonsurvivor_BSEEG_DHGBand.mat', 'nonsuvivor_variables');