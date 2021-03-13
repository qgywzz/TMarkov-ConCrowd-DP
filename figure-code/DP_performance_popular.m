clear 
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   Popular
%%%%% po_e_dis

y1=[
17.28
9.925086653
8.064
7.209653288
4.405611684
3.642381133
];
a1=[
20.58392583
12.29808012
9.339063759
7.507047647
5.647065577
4.23635716
];

t1=[  1 1.2 1.4 1.6 1.8 2 ];                           %epsilon
hold on
S1 = plot(t1, a1,'dr--');
S2 = plot(t1, y1,'sb-');
hold off
xlabel('¦Å'),ylabel('Distance(km)');
legend([S1 S2],'K-norm DP', 'CLS-DP');


%%%%% po_e_del
figure
x1=[42
41.42857143
33.275
32.77142857
19.14285714
9.571428571
];
b1=[
65.45714286
46.13333333
36.63333333
23.02857143
30
13.93333333
];
t1=[  1 1.2 1.4 1.6 1.8 2 ];                           %epsilon
hold on
S1 = plot(t1, b1,'dr--');
S2 = plot(t1, x1,'sb-');
hold off
xlabel('¦Å'),ylabel('Size of ¦Ä set');
legend([S1 S2],'K-norm DP', 'CLS-DP');
%

%%%%% po_e_dri
figure
z1=[0.266666667
0.371428571
0.416666667
0.585714286
0.6
0.833333333
];
c1=[
0.285714286
0.483333333
0.475
0.642857143
0.728571429
0.871428571
];
t1=[  1 1.2 1.4 1.6 1.8 2 ];                           %delta
hold on
S1 = plot(t1, c1,'dr--');
S2 = plot(t1, z1,'sb-');
hold off
xlabel('¦Å'),ylabel('Drift Ratio');
legend([S1 S2],'K-norm DP', 'CLS-DP');


%%%%% po_d_dis
figure
y2=[15.36
11.3472
10.65546632
7.8336
5.952
5.47326569
];
a2=[
17.46967164
12.7718694
11.58268297
8.678147477
8.344408676
7.020319956
];
hold on
t1=[0.05  0.1 0.15 0.2 0.25 0.3];                           %delta
S1 = plot(t1, a2,'dr--');
S2 = plot(t1, y2,'sb-');
hold off
xlabel('¦Ä'),ylabel('Distance(km)');
legend([S1 S2],'K-norm DP', 'CLS-DP');

figure
%%%%% po_d_del
x2=[72
41.42857143
29.4
22.63333333
18.5
9.033333333
];
b2=[
80.08
48.57142857
35.13333333
25.425
22.73333333
12.6
];
hold on
t1=[0.05  0.1 0.15 0.2 0.25 0.3];                           %delta
S1 = plot(t1, b2,'dr--');
S2 = plot(t1, x2,'sb-');
hold off
xlabel('¦Ä'),ylabel('Size of ¦Ä');
legend([S1 S2],'K-norm DP', 'CLS-DP');
%

%%%%% po_d_dri
figure
z2=[0.25
0.371428571
0.4
0.5625
0.7
0.742857143
];
c2=[
0.3
0.471428571
0.433333333
0.45
0.71
0.756666667
];
hold on
t1=[0.05  0.1 0.15 0.2 0.25 0.3];                           %delta
S1 = plot(t1, c2,'dr--');
S2 = plot(t1, z2,'sb-');
hold off
xlabel('¦Ä'),ylabel('Drift Ratio');
legend([S1 S2],'K-norm DP', 'CLS-DP');

