
clear all;
clc

p = [12 3; 10 6; 9 7; 3 7; -3 7; -8 3; -12 -3; -10 -6; -9 -7; -3 -7; 3 -7; 8 -3; 12 3];
n = length( p );
for i = 1: n
    d(i) = p(i, 1);
    f(i) = p(i, 2);
end 
plot(d, f);
hold on;

p0 = Samfromarea( p );
plot(p0(1), p0(2), 'r*');

    for j =1: 50

Ip = Intersecpoint( p0, p );
plot([Ip(1,1),Ip(2,1)],[Ip(1,2),Ip(2,2)]);

p1 = Samfromline (Ip);
plot(p1(1), p1(2), 'b*');

p0 = p1;


end