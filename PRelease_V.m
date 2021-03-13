%/**********   Function   PRelease_V  ****************/
%{
*       Input:  r, error limits
*               KI, K_norm Sensihull
*               T, Isotropic Trans Matrix
*               y, disturbed location
*               p1, ����������������location�� probability��
*       Output: p,  Released probability
%}

function p = PRelease_V(r, KI, T, y, p1)

n = length(p1);
p = zeros(1, n);
l = zeros(n, 2);
for i = 1 : n
    l(i, :) = LtoG (i);
end

 for i = 1 : n   
    z1 = l(i, :);            % ʵ��λ��
                            % DP���\epsilon      
    p(i) = PRelease(r, KI, T, y, z1 );        
    %�ͷ�λ�õ��ͷŸ��� p ,�������� 
 end    %����λ�õ��ͷ�λ�õ��ͷŸ���
end
 
 