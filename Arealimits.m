
function [Xmax, Xmin, Ymax, Ymin] = Arealimits( p )
% function 为在范围内均匀随机取样生成范围界限
    Xmax = 0;
    Xmin = 0;
    Ymax = 0;
    Ymin = 0;
    n = length( p );
    for i = 1 : n-1
        if (  p(i, 1) > Xmax )
            Xmax = p(i ,1);
        elseif (  p(i, 1) < Xmin  )
            Xmin = p(i ,1);
        end
        
        if (  p(i, 2) > Ymax )
            Ymax = p(i ,2);
        elseif (  p(i, 2) < Ymin  )
            Ymin = p(i ,2);
        end
    end
    %outputtext = 'The current sensihull area limit; Xmax = %4.2f, Xmin = %4.2f, Ymax = %4.2f, Ymin = %4.2f\n ';
    %fprintf ( outputtext, Xmax, Xmin, Ymax, Ymin);
end