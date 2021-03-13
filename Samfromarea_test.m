clear all;
clc;
p = [12 3; 10 6; 9 7; 3 7; -3 7; -8 3; -12 -3; -10 -6; -9 -7; -3 -7; 3 -7; 8 -3; 12 3]


a = Samfromarea (p)

a(2)

n = length( p );
for i = 1: n
    d(i) = p(i, 1);
    f(i) = p(i, 2);
end 
plot(d, f);
hold on
plot(a(1), a(2), '*');