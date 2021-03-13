%/**********   Function   PRelease_V  ****************/
%{
*       Input:  r, error limits
*               K, K_norm Sensihull
*             
*               y, disturbed location
*               p1, 发生概率向量，（location， probability）
*       Output: p,  Released probability
%}

function p = PRelease_V_2(r, K, y, p1)

n = length(p1);
p = zeros(1, n);
l = zeros(n, 2);
for i = 1 : n
    l(i, :) = LtoG (i);    %一维变两维
end

 for i = 1 : n   
    z1 = l(i, :);            % 实际位置
                            % DP误差\epsilon      
    p(i) = PRelease_2(r, K, y, z1 );        
    %释放位置的释放概率 p ,概率向量 
 end    %所有位置到释放位置的释放概率
end
 
 