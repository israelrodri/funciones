function z = grafico(net,p,t)
%UNTITLED3 Summary of this function goes here
% Create test vectors over the whole range of input values.
mm = minmax(p);
x1 = linspace(mm(1,1),mm(1,2),50);
x2 = linspace(mm(2,1),mm(2,2),50);
v=gen2dv(x1,x2);
figure,myfigure = gcf;
for j=1:10
  net.trainParam.lr = 0.4;
  net.trainParam.epochs = 2000;
  net = train(net,p,t);
  y=sim(net,v);
  z = genzmesh(x1,x2,1.0*hardlim(y(1,:)-y(2,:)));
figure(myfigure),
colormap(gray);
pcolor(x1,x2,z);
hold on,
drawnow,
end

end
