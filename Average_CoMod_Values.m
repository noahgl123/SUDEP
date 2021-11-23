%Initialize Work Space ----------------------------------------------------
clc;

%Row 1: ECOG D:LG
%Row 2: BS EEG D:LG
%Row 3: ECOG D:HG
%Row 4: BS EEG D:HG
%Row 5: ECOG 0.5-1.5Hz , 30-60 Hz
%Row 6: BS EEG 0.5-1.5Hz , 30-60 Hz

AverageList = [1:12 ; 1:12 ; 1:12; 1:12; 1:12; 1:12];

%Load all 48 Files (Number corresponds to row, block correspsonds to column)
y1d1_1 = squeeze(Y1D1_1.sPAC.DirectPAC);
y1d1_2 = squeeze(Y1D1_2.sPAC.DirectPAC);
y1d1_3 = squeeze(Y1D1_3.sPAC.DirectPAC);
y1d1_4 = squeeze(Y1D1_4.sPAC.DirectPAC);

y2d3_1 = squeeze(Y2D3_1.sPAC.DirectPAC);
y2d3_2 = squeeze(Y2D3_2.sPAC.DirectPAC);
y2d3_3 = squeeze(Y2D3_3.sPAC.DirectPAC);
y2d3_4 = squeeze(Y2D3_4.sPAC.DirectPAC);

y2d4_1 = squeeze(Y2D4_1.sPAC.DirectPAC);
y2d4_2 = squeeze(Y2D4_2.sPAC.DirectPAC);
y2d4_3 = squeeze(Y2D4_3.sPAC.DirectPAC);
y2d4_4 = squeeze(Y2D4_4.sPAC.DirectPAC);

flu1_1 = squeeze(FLU1_1.sPAC.DirectPAC);
flu1_2 = squeeze(FLU1_2.sPAC.DirectPAC);
flu1_3 = squeeze(FLU1_3.sPAC.DirectPAC);
flu1_4 = squeeze(FLU1_4.sPAC.DirectPAC);

flu2_1 = squeeze(FLU2_1.sPAC.DirectPAC);
flu2_2 = squeeze(FLU2_2.sPAC.DirectPAC);
flu2_3 = squeeze(FLU2_3.sPAC.DirectPAC);
flu2_4 = squeeze(FLU2_4.sPAC.DirectPAC);

d1_1 = squeeze(D1_1.sPAC.DirectPAC);
d1_2 = squeeze(D1_2.sPAC.DirectPAC);
d1_3 = squeeze(D1_3.sPAC.DirectPAC);
d1_4 = squeeze(D1_4.sPAC.DirectPAC);

e1_1 = squeeze(E1_1.sPAC.DirectPAC);
e1_2 = squeeze(E1_2.sPAC.DirectPAC);
e1_3 = squeeze(E1_3.sPAC.DirectPAC);
e1_4 = squeeze(E1_4.sPAC.DirectPAC);

f7_1 = squeeze(F7_1.sPAC.DirectPAC);
f7_2 = squeeze(F7_2.sPAC.DirectPAC);
f7_3 = squeeze(F7_3.sPAC.DirectPAC);
f7_4 = squeeze(F7_4.sPAC.DirectPAC);

g6_1 = squeeze(G6_1.sPAC.DirectPAC);
g6_2 = squeeze(G6_2.sPAC.DirectPAC);
g6_3 = squeeze(G6_3.sPAC.DirectPAC);
g6_4 = squeeze(G6_4.sPAC.DirectPAC);

g7_1 = squeeze(G7_1.sPAC.DirectPAC);
g7_2 = squeeze(G7_2.sPAC.DirectPAC);
g7_3 = squeeze(G7_3.sPAC.DirectPAC);
g7_4 = squeeze(G7_4.sPAC.DirectPAC);

h6_1 = squeeze(H6_1.sPAC.DirectPAC);
h6_2 = squeeze(H6_2.sPAC.DirectPAC);
h6_3 = squeeze(H6_3.sPAC.DirectPAC);
h6_4 = squeeze(H6_4.sPAC.DirectPAC);

h7_1 = squeeze(H7_1.sPAC.DirectPAC);
h7_2 = squeeze(H7_2.sPAC.DirectPAC);
h7_3 = squeeze(H7_3.sPAC.DirectPAC);
h7_4 = squeeze(H7_4.sPAC.DirectPAC);

%Populate Average List with each subject as column, signal type as row)
AverageList(1,1) = mean2(y1d1_1);
AverageList(2,1) = mean2(y1d1_2);
AverageList(3,1) = mean2(y1d1_3);
AverageList(4,1) = mean2(y1d1_4);

AverageList(1,2) = mean2(y2d3_1);
AverageList(2,2) = mean2(y2d3_2);
AverageList(3,2) = mean2(y2d3_3);
AverageList(4,2) = mean2(y2d3_4);

AverageList(1,3) = mean2(y2d4_1);
AverageList(2,3) = mean2(y2d4_2);
AverageList(3,3) = mean2(y2d4_3);
AverageList(4,3) = mean2(y2d4_4);

AverageList(1,4) = mean2(flu1_1);
AverageList(2,4) = mean2(flu1_2);
AverageList(3,4) = mean2(flu1_3);
AverageList(4,4) = mean2(flu1_4);

AverageList(1,5) = mean2(flu2_1);
AverageList(2,5) = mean2(flu2_2);
AverageList(3,5) = mean2(flu2_3);
AverageList(4,5) = mean2(flu2_4);

AverageList(1,6) = mean2(d1_1);
AverageList(2,6) = mean2(d1_2);
AverageList(3,6) = mean2(d1_3);
AverageList(4,6) = mean2(d1_4);

AverageList(1,7) = mean2(e1_1);
AverageList(2,7) = mean2(e1_2);
AverageList(3,7) = mean2(e1_3);
AverageList(4,7) = mean2(e1_4);

AverageList(1,8) = mean2(f7_1);
AverageList(2,8) = mean2(f7_2);
AverageList(3,8) = mean2(f7_3);
AverageList(4,8) = mean2(f7_4);

AverageList(1,9) = mean2(g6_1);
AverageList(2,9) = mean2(g6_2);
AverageList(3,9) = mean2(g6_3);
AverageList(4,9) = mean2(g6_4);

AverageList(1,10) = mean2(g7_1);
AverageList(2,10) = mean2(g7_2);
AverageList(3,10) = mean2(g7_3);
AverageList(4,10) = mean2(g7_4);

AverageList(1,11) = mean2(h6_1);
AverageList(2,11) = mean2(h6_2);
AverageList(3,11) = mean2(h6_3);
AverageList(4,11) = mean2(h6_4);

AverageList(1,12) = mean2(h7_1);
AverageList(2,12) = mean2(h7_2);
AverageList(3,12) = mean2(h7_3);
AverageList(4,12) = mean2(h7_4);

AverageList(5,1) = mean2(y1d1_1(2:5,1:29));
AverageList(5,2) = mean2(y2d3_1(2:5,1:29));
AverageList(5,3) = mean2(y2d4_1(2:5,1:29));
AverageList(5,4) = mean2(flu1_1(2:5,1:29));
AverageList(5,5) = mean2(flu1_1(2:5,1:29));
AverageList(5,6) = mean2(d1_1(2:5,1:29));
AverageList(5,7) = mean2(e1_1(2:5,1:29));
AverageList(5,8) = mean2(f7_1(2:5,1:29));     
AverageList(5,9) = mean2(g6_1(2:5,1:29));
AverageList(5,10) = mean2(g7_1(2:5,1:29));
AverageList(5,11) = mean2(h6_1(2:5,1:29));
AverageList(5,12) = mean2(h7_1(2:5,1:29));

AverageList(6,1) = mean2(y1d1_2(2:5,1:29));
AverageList(6,2) = mean2(y2d3_2(2:5,1:29));
AverageList(6,3) = mean2(y2d4_2(2:5,1:29));
AverageList(6,4) = mean2(flu1_2(2:5,1:29));
AverageList(6,5) = mean2(flu1_2(2:5,1:29));
AverageList(6,6) = mean2(d1_2(2:5,1:29));
AverageList(6,7) = mean2(e1_2(2:5,1:29));
AverageList(6,8) = mean2(f7_2(2:5,1:29));     
AverageList(6,9) = mean2(g6_2(2:5,1:29));
AverageList(6,10) = mean2(g7_2(2:5,1:29));
AverageList(6,11) = mean2(h6_2(2:5,1:29));
AverageList(6,12) = mean2(h7_2(2:5,1:29))
% Exports final Average List







