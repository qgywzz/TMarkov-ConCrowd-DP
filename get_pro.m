%%%%%******     ȡ tp ʱ���ĸ��ʷֲ�  ��һ����ĸ���*******
%{
       input :  p0  %  STMarkov ��̬���ʷֲ�
                tp  %  ʱ�����

        output: p   % ���ʷֲ� ��һ����ĸ���

%}
function p = get_pro(p0, tp)
k = (tp-1)*400;

for i = 1: 400
    k = k+1;
    p1(i) = p0(k);
end

p2 = 0;
for i = 1: 400
    p2 = p2 + p1(i);
end

for i = 1:400
    p(i) = p1(i)/p2;
end
end
