clear
clc

a = [
    19	10
18	13
17	13
17	13
14	9
13	16
11	5
10	1
9	5
8	6
12	5
11	5
11	4
18	12
8	18
10	4
17	13
14	6
13	16
12	15
12	13
16	13
19	11
13	16
18	6
18	11
18	13
18	13
17	13
14	8
];

b = [
    19	10
18	13
17	13
17	13
14	9
13	16
11	5
18	13
9	5
8	6
12	5
11	5
11	4
18	12
10	7
10	4
17	13
14	6
13	16
12	15
12	13
16	13
19	11
13	16
18	6
18	11
18	13
18	13
17	13
14	8
];

%tra = [390	373	353	353	289	276	225	201	185	166	245	225	224	372	178	204	353	247	276	255	253	333	391	276	366	371	373	373	353	288];
n = size(a);
j = 1;
x1 = zeros(1,n(1));
x2 = zeros(1,n(1));
y1 = zeros(1,n(1));
y2 = zeros(1,n(1));

for i = 1 : n(1)
    
    x1(j) = a(i,1);
    x2(j) = a(i,2); 
        y1(j) = b(i,1);
    y2(j) = b(i,2); 
    
    
    j= j+1;
end

t = 1: 30;
plot3(t, x1, x2,'-b');
hold on
plot3(t, y1, y2,'--r');
grid on

xlabel('Timestamps'),ylabel('South-North geographic number'),zlabel('West-East geographic number')
legend('POIs','DP');
