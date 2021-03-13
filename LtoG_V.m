


function z = LtoG_V (Z)

n = length (Z);
for i =1 : n
    z(i, :) = LtoG (Z(i));
end

end