%/**********   Function  Intersecpoint  ****************/
%{   
*   input:  S Sensihullarea; and  p0 start point
*   output: Two points, Intersection points between the line and hull. the line, from p0 with random direction
%}

function Isp = Intersecpoint ( p0, d, S )
%function  1、在area范围内，从给定点，以正态随机方向做直线
%          2、返回直线与area 的两个交点
    j = 1;
 
    n = length(S);
 
    for i = 2: n
        p1 = S(i-1, :);
        p2 = S(i, :);
        a = Intersecline( d, p0, p1, p2 );
      %  plot(a(2), a(3),'+');   
        if (a(1) ==1)  && (p1(1) == p2(1)) && (min(p1(2),p2(2)) <= a(3) && a(3) <= max(p1(2),p2(2)))
               b(j, :) = [a(2), a(3)];
               j = j+1;
        elseif (a(1)==1) &&(p1(2) == p2(2)) &&(min(p1(1),p2(1)) <= a(2) && a(2) <= max(p1(1),p2(1)))
               b(j, :) = [a(2), a(3)];
               j = j+1;
        elseif (a(1)==1) &&(p1(1) ~= p2(1)) && (p1(2) ~= p2(2)) &&(min(p1(1),p2(1)) <= a(2) && a(2) <= max(p1(1),p2(1)))
               b(j, :) = [a(2), a(3)];
               j = j+1;
        end

    end
    Isp = unique(b,'rows');
    
end


function  a = Intersecline( d, p0, p1, p2 )
    
    a1 = d(2);
    b1 = -d(1);
    c1 = d(1)*p0(2) - d(2)*p0(1);
    a2 = p1(2) - p2(2);
    b2 = p2(1) - p1(1);
    c2 = p2(2)*p1(1) - p1(2)*p2(1);
    
    if (a1*b2 == a2*b1) && (a1*c2 == a2*c1)
        t = 0;
        disp('They are the same line!');
    elseif (a1*b2 == a2*b1) && (a1*c2 ~= a2*c1)
        t = -1;
        disp('They are parallel with no intersection point!')
    else
        t = 1;
        x = (b1*c2 - b2*c1)/(a1*b2 - a2*b1);
        y = -(a1*c2 - a2*c1)/(a1*b2 - a2*b1);     
    end
    
    a = [t, x, y];
   
end


