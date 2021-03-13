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
[~, b] = min(d);    %两参数返回时，第一个参数返回最小值行向量，第二个参数返回最小值取的位置
x = S(b, :);
end