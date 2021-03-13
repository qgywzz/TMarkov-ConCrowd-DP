%%%%%******     取 tp 时区的概率分布  归一化后的概率*******
%{
       input :  p0  %  STMarkov 稳态概率分布
                tp  %  时区序号

        output: p   % 概率分布 归一化后的概率

%}
function p = get_pro(p0, tp)
k = (tp-1)*400;

for i = 1: 400
    k = k+1;
    p1(i) = p0(k);
end

p2 = 0;
for i = 1: 400
    p2 = p2 + p1(i);
end

for i = 1:400
    p(i) = p1(i)/p2;
end
end
