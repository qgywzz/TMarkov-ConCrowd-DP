
%/**********   Function   Isotropictrans  ****************/
%{      
*    Input:     Sensihull
*    Output:    a, T error limit
*               T, Isotropic Transform matrix
%}

function [a, T] = Isotropictrans(  S )

     MAX = 100000;    
    a = 1;
  while( a > 0.001)
      for j = 1:2
        T = [0 0;0 0];
        p0 = Samfromarea( S );   
        
%    plot(p0(1), p0(2), '*');
        
        p(1, :) = p0; 
        for  i = 1 : MAX
               d = normrnd ( 0, 1, 1, 2 );
               Ip = Intersecpoint( p(i, :), d, S );   
               
%  n = length(Ip);
% for j = 1: n
%     a1(j) = Ip(j, 1);
%     b1(j) = Ip(j, 2);
% end
% plot(a1, b1);
              
               p1 = Samfromline( Ip );
               
%plot(p1(1), p1(2), '*');               
               
               p(i+1, :) = p1;
        end

        for i = 1 : MAX+1
             T =  T + p(i, :)' * p(i, :);
        end 
        T = ( T/(MAX+1) )^(-1/2);
        t(:, :, j) = T;
      end
    a = norm(t(:, :, 1) - t(:, :, 2), 'fro');
   end
    T = t(:, :, 1);
end


