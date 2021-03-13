
%/**********   Function   PostUpdate  ****************/
%{
*       Input:  p1, 先验发生概率
*               p, 对于扰动位置的释放概率向量
*       Output: p3,  后验概率更新
%}


function p3 = PostUpdate(p1, p)  % p1是发生概率向量， p是扰动位置的释放概率向量

 p2 = 0;         %s释放点的释放概率期望
 n = length (p1);
 for i = 1 : n
    p2 = p2 + p(i)*p1(i);                  
 end
 p3 = zeros(1, n);
 for i = 1 : n
     p3(i) = p(i)*p1(i)/p2;
 end  %后验概率更新
end