function [n, p] = Readpoints( yp )
   % Readpoints 
   % yp = [1, MIX]    SensiHull.c   output
   % SensiHull :   n   number of points;    p   points set  m*2
   n = yp(1);
   j = 1;
   for  i = 2 : 2:  2*n
       p(j, 1) = yp (i);
       p(j, 2) = yp (i+1);
       j = j+1;
       
   end