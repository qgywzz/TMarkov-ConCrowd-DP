
% clear all
% clc
% %S = [-9 -7; -10 -6; -12 -3; -8 3; -3 7; 9 7; 10 6; 12 3; 8 -3; 3 -7; -9 -7]
% K = [12 3; 10 6; 9 7; 3 7; -3 7; -8 3; -12 -3; -10 -6; -9 -7; -3 -7; 3 -7; 8 -3; 12 3];
% z = [0, 0];             % 实际位置
% r = 1;                  % DP误差\epsilon
% % %把 Sensihull 转化为 等向平面
% % % T = Isotropictrans(  K )
% T = [0.1844 -0.0400; -0.0400 0.2802];
% KI = (T*(K'))';
% y = PIM(r, KI, T, z);   % 扰动位置
% z1 = [1, 0];

%/**********   Function   PRelease  ****************/
%{
*       Input:  r, error limits
*               KI, K_norm Sensihull
*               T, Isotropic Trans Matrix
*               y, disturbed location
*               z1, real location, 二维行向量,所有位置向量中的任一个
*       Output: p,  Released probability，z1到y的释放概率
%}

function p = PRelease(r, KI, T, y, z1 )     %  y 相对于 z1的释放概率

z2 = (T*(z1'))';     %等向转换后的相对位置
z0 = [0, 0];
y1 = (T*(y'))';      %等向转换后的扰动位置
S =  SSarea(KI);
 
d = y1 - z2;          %扰动向量
Ip = Intersecpoint(z0, d, KI);    %与KI的两个交点

%x = [0, 0];
if Ip(1, 1)*d(1) > 0
    x = Ip(1, :);
elseif (d(1)==0) && (Ip(1, 2)*d(2) > 0)
    x = Ip(1, :);
else 
    x = Ip(2, :);
end

if x(1) == 0
    k = d(2)/x(2);
else
    k = d(1)/x(1);
end
%d1 = k * d;
p = (r^2)/(6*S)* exp(-r*k);
end


% 
% % n = length(S);
% % for i = 1: n
% %     a(i) = S(i, 1);
% %     b(i) = S(i, 2);
% % end
% % plot(a, b)
% hold on
% n = length(KI);
% for i = 1: n
%     a1(i) = KI(i, 1);
%     b1(i) = KI(i, 2);
% end
% plot(a1, b1)
% plot(d1(1), d1(2),'b+')
% plot(x(1), x(2),'r*')

