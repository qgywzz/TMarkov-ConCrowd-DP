
%/**********   Function   DeltaSet  ****************/
%{
*       Input:  p1, 先验发生概率
*               s, \delta 
*       Output: S, \DeltaSet  维度 n*2
%}

function S = DeltaSet(p1, s)

n = length(p1);
a = 1: n;
p2 = [a', p1'];
p3 = sortrows(p2, -2);
p = 0;
i = 0;
while p < (1-s)
    i = i+1;
    p = p + p3(i, 2); 
end

for j = 1: i
    S(j, :) = LtoG ( p3(j, 1));
end
%S
% length (S)
end