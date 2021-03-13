 t = 0:0.01: 10;
 y1 = gampdf(t, 3, 0.5);
 %y2 = exppdf(t, 2);
 plot(t, y1,'r');
 %hold on;
 %plot(t, y2, 'b');