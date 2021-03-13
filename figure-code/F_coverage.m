clear
clc

x=[0.64
0.76
0.847
0.84
0.824
];
a=bar(x);
set(a,'FaceColor',[0.48 0.43 1]);
set(gca,'XTickLabel',{'1','2','3','4','5'})
xlabel('Top n'),ylabel('Average Coverage Ratio')
figure

y=[0
    0.04
0.42
1
];

b=bar(y);
set(b,'FaceColor',[0.48 0.43 1]);
set(gca,'XTickLabel',{'0','1','2','3'});
xlabel('Coverage Ratio'),ylabel('Cumulative Distribution Function');
legend('Top 3 POIs Trajectory Sequence')
figure

z=[0
    0
0
0.16
0.72
1
];

c=bar(z);
set(c,'FaceColor',[0.48 0.43 1]);
set(gca,'XTickLabel',{'0','1','2','3','4','5'})
xlabel('Coverage Ratio'),ylabel('Cumulative Distribution Function');
legend('Top 5 POIs Trajectory Sequence')
