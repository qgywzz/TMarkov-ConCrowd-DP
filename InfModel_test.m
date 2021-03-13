
% n = length (y) ;
% for i = 1: n
%     a1(i) = y(i, 1);
%     b1(i) = y(i, 2);
% end
% plot(a1, b1,'b');
% hold on
% n = length (z);
% for i = 1: n
%     a2(i) = z(i, 1);
%     b2(i) = z(i, 2);
% end
% plot(a2, b2,'r')

% hold on
% 
% plot(z(1), z(2),'r*');        %实际位置用红星
% plot(y(1), y(2),'b*');          %扰动位置用蓝星

a = 0;
for i = 1:400
    a = a+ M(1,1,i);
end
a

        
        
  n = length (y) ;
  t= 1 : n;
for i = 1: n
    a3(i) = y(i, 1);
    b3(i) = y(i, 2);
end
plot3(t, a3, b3,'b');
hold on

for i = 1: n
    a4(i) = z(i, 1);
    b4(i) = z(i, 2);
end
plot3(t, a4, b4,'r')
hold off

%for i = 1:5
 %   figure()
hold on
% plot(z(1,1),z(1,2),'b*');
% plot(y(1,1), y(1,2),'r*');
    n = length(S);              %打印凸集
    a = zeros(1, n);
    b = zeros(1, n);
    for i = 1: n
        
        a(i) = S(i, 1);
        b(i) = S(i, 2);
        plot(a(i), b(i), 'g*');
    end
        
   n = length(K);               %打印敏壳
   a1 = zeros(1, n);
    b1 = zeros(1, n);
    for i = 1: n
        a1(i) = K(i, 1);    
        b1(i) = K(i, 2);
    end
        plot(a1, b1,'b');
   n = length(KI);              %打印等向位置敏壳
    a2 = zeros(1, n);
    b2 = zeros(1, n);
    for i = 1: n
        a2(i) = KI(i, 1);
        b2(i) = KI(i, 2);
    end
        plot(a2, b2,'r');
hold off
%end       
        
        
 n = length(Z);
t = 1: n;
plot(t, Z);

 for b =1: n 
 c = c + p3(b);
 end      
        
 
 if b(1) ~= b(2)
  c =1;
 end
        
%         plot(z(4, 1), z(4, 2),'r*');
%        % plot (z1(1),z1(2), '+');
%         plot(y(4,1), y(4, 2), 'b*');
       % hold off
