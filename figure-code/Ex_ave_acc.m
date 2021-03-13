figure

x = 1:1:5;

y1=[0.64
0.76
0.847
0.84
0.824
];
y2=[0.55
0.8
0.85
0.81
0.74
];

y3 = [0.2 0.24 0.3 0.34 0.35];

plot(x,y1,'-.gd','LineWidth',1.5,'markersize',11);   % a_cluster
hold on;
plot(x,y2,'--bs','LineWidth',1.5,'markersize',11);  % mb_cluster
hold on
plot(x,y3,'-ko','LineWidth',1.5,'markersize',11);   % K-means

set(gca,'LineWidth',1)
set(gca,'FontName','Times New Roman','FontSize',19)
%title('Staying Durations of Different Locations','FontName','Times New Roman','FontSize',17)
xlabel('n / Top n PoIs','FontName','Times New Roman','FontSize',23)
ylabel('The Average Accuracy','FontName','Times New Roman','FontSize',23)
legend('STMarkov\_1','STMarkov\_2','Markov Chain')



% %t = [1, 2, 3, 4, 5];
% S1 = plot(t, x1, 'sb-');
% hold on 
% S2 = plot(t, x2, 'dr--');
% hold off
% xlabel('Top n'),ylabel('The Average Accuracy');
% legend([S1 S2],'Test 1', 'Test 2');
% axis(1, 5, 0.5, 0.9);
