%/**********   Function  Samfromarea  ****************/
%{
   *    input:  p  (n+1)*2 Sensihull points set
   *    output: a = [x, y], point, randomly sampled from the area
   *
%}

function pp = Samfromarea (p) 
% function  从范围内随机选择一点

 [Xmax, Xmin, Ymax, Ymin] = Arealimits( p );

    t = 0; 
    while( t == 0)
        x = unifrnd ( Xmin, Xmax );
        y = unifrnd ( Ymin, Ymax );
        a = Inside( x, y, p );
        if a == 1
             t = 1;
        end
    end
    X = x;
    Y = y;
    pp = [X, Y];
end
 
%plot(X, Y, 'r*');


function a = Inside(x, y, p)
    p0 = [x, y];  
    n = length( p );
 
    for i = 2: n
        p1 = p(i-1,:);
        p2 = p(i,:);   
        b = Left (p1, p2, p0);
        if b <= 0
             a = -1;
             return;
        end     
    end
    a = 1;
end

function t = Left (a, b, c)
    
    s = ( c(2)-a(2))*(b(1)-a(1) ) - ( b(2)-a(2))*(c(1)-a(1) ) ;
    if s > 0
        t = 1;
    elseif s < 0
        t = -1;
    else
        t = 0;
    end
end


