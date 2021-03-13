% clear all;
% clc
% S = [12 3; 10 6; 9 7; 3 7; -3 7; -8 3; -12 -3; -10 -6; -9 -7; -3 -7; 3 -7; 8 -3; 12 3];

% %把 Sensihull 转化为 等向平面
% % T = Isotropictrans(  S )
% T = [0.1844 -0.0400; -0.0400 0.2802];
% KI = (T*(S'))'


%/**********   Function   PIM  ****************/
%{
*       Input:  r, epsilon    error limits  
*               KI, K_norm Sensihull
*               T, Isotropic Trans Matrix
*               z, real location, 二维行向量
*       Output: y,  disturbled location   二维行向量
%}
function y = PIM(r, KI, T, z)
  
   zt = Samfromarea(KI);
   r1 = r^(-1);
   s = gamrnd( 3,  r1);
   T1 = inv(T);
   y = z +  s * ((T1) * zt')';
%   y = z +  ((T1) * zt')';
end

% n = length(S);
% for i = 1: n
%     a(i) = S(i, 1);
%     b(i) = S(i, 2);
% end
% plot(a, b)
% hold on;
% n = length(KI);
% for i = 1: n
%     a1(i) = KI(i, 1);
%     b1(i) = KI(i, 2);
% end
% plot(a1, b1)
% plot(zt(1), zt(2),'b+')
% plot(z1(1), z1(2),'r*')

