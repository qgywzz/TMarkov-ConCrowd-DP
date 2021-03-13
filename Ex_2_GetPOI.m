
function Top_n = Ex_2_GetPOI(top_n, p)

p1 = p;   % 行向量
    %fprintf('d=%d\n', i)
m = length(p1);
p11 = zeros(m, 2);   % 400*2    2维列向量 

for j = 1:m     % 1--400
    p11(j, 1) = j;
    p11(j, 2) = p1(j);
end
    
p12 = sortrows(p11, -2);   % sortrows 按某一列排序，其他列不变； 2表示按2列排序，负数表降序
    
t = 1;
for i = 1: top_n
    Top_n(t) = p12(i);
    t = t+1;
end
    
    
end