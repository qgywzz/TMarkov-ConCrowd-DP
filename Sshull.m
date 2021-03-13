%/**********   Function  Sshull  ****************/
%{   
*   input:  S, point set;need to be disturbed
*   output: p, Sensitivehull
%}
% clear all;
% clc
% S = [7 4; 6 5; 3 3; 0 5; -2 3;-2  2; -5 1; 0 0; -3 -2; 3 -2]

function  p = Sshull( S )
    n = length(S);
    for i = 1: n
        a(i) = S(i, 1);
        b(i) = S(i, 2);
    end
    
%    plot(a, b)
   K = convhull(a', b');
  %  First convset
   n = length(K);
   k = 1;
   for i = 1: n-1
        for j = 1: n-1
            a1(k) = a(K(i)) - a(K(j));
            b1(k) = b(K(i)) - b(K(j));
            k = k+1;
        end
   end
   % differential set
   %p1 = [a1', b1'];
   
   K1 = convhull(a1', b1');
   % Second time convset
   n = length(K1);
    for i = 1: n
        c(i) = a1(K1(i));
        d(i) = b1(K1(i));
    end
   % Second time convset
   p = [c', d'];
  % length(p)
  % plot(c, d);   
end

