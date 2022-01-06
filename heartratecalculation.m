% Clear Workspace
clc; clear;

% Define interval, time start/end
int = 0.5;
a = 29;
b = 41;

% Time vector create from start/end time and interval
time = linspace(a,b,(b-a)/int);

% Peak vector created from exported peak .csv file
filename = 'C:\Gu Lab\OSU\Projects\EEG analyses\Matlab scripts\ECG\cc009_1_2nd_base.csv'
peaks = [csvread(filename)]

% Record heart beats between current and next interval
heartbeat = zeros(1,length(time));
for i = 1:length(time)
    for j = 1:length(peaks)
        if peaks(j) >= time(i) && peaks(j) <= time(i+1)
            heartbeat(i) = heartbeat(i) + 1;
        end
    end
end

% Moving average to remove outliers
avgpeaks = movmean(heartbeat,2);

% Average BPM per second calculated
for i = 1:length(avgpeaks)
    beatspermin(i) = avgpeaks(i)/int * 60;
end

% Plot BPM vs Time
plot(time,beatspermin,'LineWidth', 3.0)
ylim([100,900])