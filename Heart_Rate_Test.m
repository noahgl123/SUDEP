%Produce Heart Rate Measurement for Given Subject's ECG Data and Time Window
clc; clear;

%Initialize Data Collection
D = load('cc009 f 7th ECG.mat').cc009_f_7th_Ch2;  % Filename should be [data].mat format
int = D.interval;
scale = D.scale;
units = D.units;
LGTH = D.length;
values = D.values;

%Plot ECG Voltage vs Time
figure(1)
time = 0:int:(LGTH-1)*int;
%plot(time(40*(1/int):65*(1/int)),values(40*(1/int):6 5*(1/int)))
plot(time,values)
title('ECG Graph'); xlabel('time'); ylabel(units); 

%Remove DC Drift
figure(2)
h = fir1(2000,1/2000*2,'high');
hp = filter(h,1,values);
hps = hp.^2;
plot(time,hps)


%Detect Heart Beats
figure(3)
last = 0;
upflag = 0;
pulse = zeros(length(hps),1);
p = 0

for i = 1:length(hps)
    if (hps(i) > .3)
        if (upflag == 0)
            if( last > 0 )
                t = i - last;
                p = 2000/t * 60;
            end
            last = i;
        end
        upflag = 100;
    else
        if (upflag > 0)
            upflag = upflag - 1;
        end
    end
    pulse(i) = p;
end

plot(time,pulse)
title('Heart Rate with Respect to Time'); xlabel('time'); ylabel('heart rate BPM');


