clear
clc

P = [
390	373	353	353	289	276	225	201	185	166	245	225	224	372	178	204	353	286	276	255	253	333	391	276	366	371	373	373	353	288
];   % statistical trajectory 
P1 = [
390	373	353	353	289	276	225	373	185	166	245	225	224	372	207	204	353	286	276	255	253	333	391	276	366	371	373	373	353	288
];  % Predicted trajectory

t = 0.33333:0.33333:   10;
figure
hold on
S1 = plot(t, P,'+b-');       %Í³¼Æ P
S2 = plot(t, P1,'*r--');      %Ô¤²â P

xlabel('Timestamp');
ylabel('Location Geographical Number');
line([0,10], [400,400],'Color','black','LineStyle','-');
line([10,10], [150,400],'Color','black','LineStyle','-');

for i = 1:9
 a = [0.1+i,  0.1+i];
 b = [150, 400];
 line(a, b, 'Color','green','LineStyle','--');   
end

legend([S2 S1],'Predicted Trajectory', 'Statistical Trajectory');

hold off