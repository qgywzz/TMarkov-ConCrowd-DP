%/**********   Function  Samfromline  ****************/
%{  
*   input:  p, two points, line section 
*   output: a, one point,  uniformly selected from the line section
%}

function t = Samfromline( p )
    a = 0;
    while (a == 0 || a == 1)
    a = unifrnd( 0, 1 );
    end
    p1 = p(1, :);
    p2 = p(2, :);
    x = a*(p2(1) - p1(1)) + p1(1);
    y = a*(p2(2) - p1(2)) + p1(2);
    t = [x, y];
    
end