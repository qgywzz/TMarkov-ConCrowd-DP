clear
clc

y3=[0.933333333
0.933333333
1
0.933333333
0.666666667
0.666666667
0.8
0.666666667
0.933333333
1
];
y4=[0.75
0.8
0.75
1
0.5
0.9
0.8
0.65
1
0.9
];
y5=[0.64
0.72
0.84
0.8
0.44
0.8
0.8
0.76
0.8
0.84
];
t = [1,2,3,4,5,6,7,8,9,10];
% hold on
% S1 = plot(t, y3, 'sb-');
% S2 = plot(t, y4, 'dr--');
% S3 = plot(t, y5, 'og:');
% hold off
%xlabel('The Time Partitions' ),ylabel('The Accuracy Rate')

%legend([S1 S2 S3],'Top 3 PoI Trajectory', 'Top 4 PoI Trajectory', 'Top 5 PoI Trajectory');

plot(t,y3,'-.gd','LineWidth',1.5,'markersize',11);   % a_cluster
hold on;
plot(t,y4,'--bs','LineWidth',1.5,'markersize',11);  % mb_cluster
hold on
plot(t,y5,'-ko','LineWidth',1.5,'markersize',11);   % K-means

set(gca,'LineWidth',1)
set(gca,'FontName','Times New Roman','FontSize',19)
%title('Staying Durations of Different Locations','FontName','Times New Roman','FontSize',17)
xlabel('The Time Partitions','FontName','Times New Roman','FontSize',23)
ylabel('The Accuracy Rate','FontName','Times New Roman','FontSize',23)
legend( 'Top 3 Trajectory','Top 4 Trajectory','Top 5 Trajectory')

figure
y3=[0.866666667
0.866666667
0.733333333
0.866666667
0.6
0.933333333
1
1
0.8
0.8
];
y4=[0.8
0.9
0.85
0.85
0.7
1
0.9
0.75
0.75
0.9
];
y5=[0.68
0.84
0.8
0.8
0.72
0.84
0.8
0.92
1
0.84
];
t = [1,2,3,4,5,6,7,8,9,10];
% hold on
% S1 = plot(t, y3, 'sb-');
% S2 = plot(t, y4, 'dr--');
% S3 = plot(t, y5, 'og:');
% hold off
%xlabel('The Time Partitions' ),ylabel('The Accuracy Rate')

%legend([S1 S2 S3],'Top 3 PoI Trajectory', 'Top 4 PoI Trajectory', 'Top 5 PoI Trajectory');

plot(t,y3,'-.gd','LineWidth',1.5,'markersize',11);   % a_cluster
hold on;
plot(t,y4,'--bs','LineWidth',1.5,'markersize',11);  % mb_cluster
hold on
plot(t,y5,'-ko','LineWidth',1.5,'markersize',11);   % K-means

set(gca,'LineWidth',1)
set(gca,'FontName','Times New Roman','FontSize',19)
%title('Staying Durations of Different Locations','FontName','Times New Roman','FontSize',17)
xlabel('The Time Partitions','FontName','Times New Roman','FontSize',23)
ylabel('The Accuracy Rate','FontName','Times New Roman','FontSize',23)
legend( 'Top 3 Trajectory','Top 4 Trajectory','Top 5 Trajectory')

