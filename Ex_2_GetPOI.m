
function Top_n = Ex_2_GetPOI(top_n, p)

p1 = p;   % ������
    %fprintf('d=%d\n', i)
m = length(p1);
p11 = zeros(m, 2);   % 400*2    2ά������ 

for j = 1:m     % 1--400
    p11(j, 1) = j;
    p11(j, 2) = p1(j);
end
    
p12 = sortrows(p11, -2);   % sortrows ��ĳһ�����������в��䣻 2��ʾ��2�����򣬸�������
    
t = 1;
for i = 1: top_n
    Top_n(t) = p12(i);
    t = t+1;
end
    
    
end