
% clear all
% clc   
%i = 5;
%/**********   Function   LtoG  ****************/
%{
*       Input:  i, location sequence
*       Output: a,二维地理坐标
%}
function a = LtoG(i)

a1 = fix( i/20 );
a2 = mod( i, 20);
% for i=1: n
%    a1(i) = fix( i/20 );
%    a2(i) = mod( i, 20); 

a = [a1, a2];
end

