clear 
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Personal
%%%%% per_e_dis

y1=[
12.43500636
8.507217131
6.422621351
5.541505507
4.320437063
3.092165859
];
a1=[
15.7056
12.7552
9.01472
6.144
5.376
4.5
];

t1=[  1 1.2 1.4 1.6 1.8 2 ];                           %epsilon
hold on
S1 = plot(t1, a1,'dr--');
S2 = plot(t1, y1,'sb-');
hold off
xlabel('¦Å'),ylabel('Distance(km)');
legend([S1 S2],'K-norm DP', 'CLS-DP');


%%%%% per_e_del
figure
x1=[45.325
39.54285714
26.11428571
15
9.828571429
4.5
];
b1=[
54.23
46.46
29.177
19.8
12.2
9.6
];
t1=[  1 1.2 1.4 1.6 1.8 2 ];                           %epsilon
hold on
S1 = plot(t1, b1,'dr--');
S2 = plot(t1, x1,'sb-');
hold off
xlabel('¦Å'),ylabel('Size of ¦Ä set');
legend([S1 S2],'K-norm DP', 'CLS-DP');
%

%%%%% per_e_dri
figure
z1=[0.16
0.3
0.325
0.6
0.77
0.8
];
c1=[
0.2625
0.414285714
0.514285714
0.616666667
0.72
0.9
];
t1=[  1 1.2 1.4 1.6 1.8 2 ];                           %delta
hold on
S1 = plot(t1, c1,'dr--');
S2 = plot(t1, z1,'sb-');
hold off
xlabel('¦Å'),ylabel('Drift Ratio');
legend([S1 S2],'K-norm DP', 'CLS-DP');


%%%%% per_d_dis
figure
y2=[10.56003217
10.2283161
9.477235441
6.648028258
4.838561097
3.197458039
];
a2=[
14.01051391
11.5412524
10.40488418
7.181897946
6.606205054
5.810100723
];
hold on
t1=[0.05  0.1 0.15 0.2 0.25 0.3];                           %delta
S1 = plot(t1, a2,'dr--');
S2 = plot(t1, y2,'sb-');
hold off
xlabel('¦Ä'),ylabel('Distance(km)');
legend([S1 S2],'K-norm DP', 'CLS-DP');

figure
%%%%% per_d_del
x2=[61.32
38.55
31.4
17.28
10
7
];
b2=[
70.8
43.8
32.68571429
20.17142857
15.51428571
11.2
];
hold on
t1=[0.05  0.1 0.15 0.2 0.25 0.3];                           %delta
S1 = plot(t1, b2,'dr--');
S2 = plot(t1, x2,'sb-');
hold off
xlabel('¦Ä'),ylabel('Size of ¦Ä');
legend([S1 S2],'K-norm DP', 'CLS-DP');
%

%%%%% per_d_dri
figure
z2=[0.16
0.3
0.325
0.56
0.65
0.77
];
c2=[
0.2
0.34
0.38
0.614285714
0.714285714
0.733333333
];
hold on
t1=[0.05  0.1 0.15 0.2 0.25 0.3];                           %delta
S1 = plot(t1, c2,'dr--');
S2 = plot(t1, z2,'sb-');
hold off
xlabel('¦Ä'),ylabel('Drift Ratio');
legend([S1 S2],'K-norm DP', 'CLS-DP');

