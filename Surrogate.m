function x = Surrogate(z, S)
n = length(S);
d = zeros(1, n);
for i = 1 : n
    d(i) = norm (z - S(i, :));
    if d(i) == 0
        x = z;
        return;
    end
end
[~, b] = min(d);    %����������ʱ����һ������������Сֵ���������ڶ�������������Сֵȡ��λ��
x = S(b, :);
end