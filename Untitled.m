M=rand(30,20);
figure
subplot(1,2,1)
h=bar3(M)
for n=1:numel(h)
cdata=get(h(n),'zdata');
set(h(n),'cdata',cdata,'facecolor','interp')
end
subplot(1,2,2)
h=bar3(M)
for n=1:numel(h)
cdata=get(h(n),'zdata');
cdata=repmat(max(cdata,[],2),1,4);
set(h(n),'cdata',cdata,'facecolor','flat')
end

data = [3, 7, 5, 2];

b = bar(data);

ch = get(b,'children');

set(ch,'FaceVertexCData',[0 0 1;0 1 1;1 1 1;1 0 1;])

 a=[1 2 3];
 b=diag(a);
 c=bar(b,'stack');
color=[0 0 0.75;0 1 0;[0.48 0.43 1];
 for i=1:3
set(c(i),'FaceColor',color(i,:));
end


