clear all
clc

n = 100;
d = 0 : 100;
x = d.^(0.5);


c = length(d);
y = zeros(1, c);
for i = 1: c
y(i) = log(n / d(i));
end

plot(d, x,'r*');
hold on
plot(d, y,'b*');