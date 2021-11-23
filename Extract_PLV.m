%Change portion before .TF to filename
file = h7.TF

%Initialize data into columns
for i = 1:length(file)
    x(i) = i-1;
    y(i) = file(:,:,i);
end

%Transpose values to single column for easy copying to Excel
X = x.';
Y = y.';

%Plot for comparison to Brainstorm
plot(x,y)