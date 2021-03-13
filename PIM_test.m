
clear all;
clc
S = [-9 -7; -10 -6; -12 -3; -8 3; -3 7; 9 7; 10 6; 12 3; 8 -3; 3 -7];

        p0 = Samfromarea( S );   
        
        plot(p0(1), p0(2), 'r*');
        hold on;
        
        p(1, :) = p0; 
        for  i = 1 : 10
               Ip = Intersecpoint( p(i, :), S );        
               p1 = Samfromline( Ip );
               p(i+1, :) = p1;
                           
            plot([Ip(1,1) Ip(2,1)], [Ip(1,2) Ip(2,2)]);
            plot(p1(1), p1(2), 'b*');
                    
        end


        

n = length(S);
    a(1) = S(10, 1);
    b(1) = S(10, 2);
for i = 1: n
    a(i+1) = S(i, 1);
    b(i+1) = S(i, 2);
end
plot(a, b);


