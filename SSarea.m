%/************** Function  SSarea  *****************/
%{  
* 利用函数polyarea(a, b)计算多边形面积 
* Input:  凸集  
* output： 面积
%}

function S =  SSarea(K)

n = length(K);
a = zeros(1, n);
b = zeros(1, n);
for i = 1: n
    a(i) = K(i, 1);
    b(i) = K(i, 2);
end
S = polyarea(a, b);
end