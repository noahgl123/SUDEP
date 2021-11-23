clc;

Freqs = d1_1.Freqs';

fileo = f2_1.TF;
filei = f2_2.TF;

%Initialize data into columns
for j = 1:length(filei)
    Freqs(j) = d1_1.Freqs(j);
    in(j) = filei(:,:,j);
    out(j) = fileo(:,:,j);
end

%Transpose values to single column for easy copying to Excel
F = Freqs.';
IN = in.';
OUT = out.';
OUTIN = [out; in]';

%Plot for comparison to Brainstorm
t = tiledlayout(1,2);
nexttile
plot(F,IN)
xlabel('Frequency (Hz)'); ylabel('Magnitude (V)');
nexttile
plot(F,OUT)
xlabel('Frequency (Hz)');