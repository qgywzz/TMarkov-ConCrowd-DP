clear
clc

y3=[0
0.04
0.38
0.58
];
z3=[0
0
0.44
0.56
];
t = [0, 1, 2, 3];
% S1=plot(t, y3, 'sb-');
% hold on
% S2 = plot(t, z3, 'dr--');
plot(t,z3,'-gs','LineWidth',1.5,'markersize',12);  % mb_cluster
hold on;
plot(t,y3,'--bd','LineWidth',1.5,'markersize',12);   % a_cluster

set(gca,'LineWidth',1)
set(gca,'FontName','Times New Roman','FontSize',19)
%title('Staying Durations of Different Locations','FontName','Times New Roman','FontSize',17)
xlabel('The Coverage Ratio','FontName','Times New Roman','FontSize',23)
ylabel('Proportion of Time Partitions','FontName','Times New Roman','FontSize',23)
legend('STMarkov\_1','STMarkov\_2')



figure
y4=[0
0
0.06
0.52
0.42
];
z4=[0
0
0.16
0.46
0.38
];
t = [0, 1, 2, 3, 4];
plot(t,z4,'-gs','LineWidth',1.5,'markersize',12);  % mb_cluster
hold on;
plot(t,y4,'--bd','LineWidth',1.5,'markersize',12);   % a_cluster

set(gca,'LineWidth',1)
set(gca,'FontName','Times New Roman','FontSize',19)
%title('Staying Durations of Different Locations','FontName','Times New Roman','FontSize',17)
xlabel('The Coverage Ratio','FontName','Times New Roman','FontSize',23)
ylabel('Proportion of Time Partitions','FontName','Times New Roman','FontSize',23)
legend('STMarkov\_1','STMarkov\_2')

figure
y5=[0
0
0
0.16
0.56
0.28
];
z5=[0
0
0.08
0.22
0.6
0.1
];
t = [0, 1, 2, 3, 4, 5];
plot(t,z5,'-gs','LineWidth',1.5,'markersize',12);  % mb_cluster
hold on;
plot(t,y5,'--bd','LineWidth',1.5,'markersize',12);   % a_cluster

set(gca,'LineWidth',1)
set(gca,'FontName','Times New Roman','FontSize',19)
%title('Staying Durations of Different Locations','FontName','Times New Roman','FontSize',17)
xlabel('The Coverage Ratio','FontName','Times New Roman','FontSize',23)
ylabel('Proportion of Time Partitions','FontName','Times New Roman','FontSize',23)
legend('STMarkov\_1','STMarkov\_2')


figure
x1=[0.64
0.76
0.847
0.84
0.824
];
x2=[0.55
0.8
0.85
0.81
0.74
];
t = [1, 2, 3, 4, 5];
S1 = plot(t, x1, 'sb-');
hold on 
S2 = plot(t, x2, 'dr--');
hold off
xlabel('Top n'),ylabel('The Average Accuracy');
legend([S1 S2],'Test 1', 'Test 2');
axis(1, 5, 0.5, 0.9);

plot(t,x1,'--bd','LineWidth',1.5,'markersize',12);   % a_cluster
hold on;
plot(t,x2,'-gs','LineWidth',1.5,'markersize',12);  % mb_cluster

set(gca,'LineWidth',1)
set(gca,'FontName','Times New Roman','FontSize',19)
%title('Staying Durations of Different Locations','FontName','Times New Roman','FontSize',17)
xlabel('n / Top n PoIs','FontName','Times New Roman','FontSize',23)
ylabel('The Average Accuracy','FontName','Times New Roman','FontSize',23)
legend('STMarkov\_1','STMarkov\_2')

%b=bar(y3);
%set(b, 'Box', 'on');

%legend('Top 5 POIs Trajectory Sequence')
% a=bar(x);
% 
