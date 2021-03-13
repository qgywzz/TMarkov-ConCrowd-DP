%/**********   Function   PRelease_V  ****************/
%{
*       Input:  r, error limits
*               K, K_norm Sensihull
*             
*               y, disturbed location
*               p1, ����������������location�� probability��
*       Output: p,  Released probability
%}

function p = PRelease_V_2(r, K, y, p1)

n = length(p1);
p = zeros(1, n);
l = zeros(n, 2);
for i = 1 : n
    l(i, :) = LtoG (i);    %һά����ά
end

 for i = 1 : n   
    z1 = l(i, :);            % ʵ��λ��
                            % DP���\epsilon      
    p(i) = PRelease_2(r, K, y, z1 );        
    %�ͷ�λ�õ��ͷŸ��� p ,�������� 
 end    %����λ�õ��ͷ�λ�õ��ͷŸ���
end
 
 