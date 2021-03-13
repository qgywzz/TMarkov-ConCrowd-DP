
%/**********   Function   PostUpdate  ****************/
%{
*       Input:  p1, ���鷢������
*               p, �����Ŷ�λ�õ��ͷŸ�������
*       Output: p3,  ������ʸ���
%}


function p3 = PostUpdate(p1, p)  % p1�Ƿ������������� p���Ŷ�λ�õ��ͷŸ�������

 p2 = 0;         %s�ͷŵ���ͷŸ�������
 n = length (p1);
 for i = 1 : n
    p2 = p2 + p(i)*p1(i);                  
 end
 p3 = zeros(1, n);
 for i = 1 : n
     p3(i) = p(i)*p1(i)/p2;
 end  %������ʸ���
end