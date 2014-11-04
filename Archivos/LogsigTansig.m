load('matlab.mat');
p=dis1_1;
t=getcls(p);
plotpv(p,t)
net = newff(minmax(p),[200,50,2],{'tansig','logsig','purelin'},'traingdm','traingdm');
net.trainParam.lr = 0.4;
net.trainParam.epochs = 10000;
net = train(net, p, t);
y = sim(net, p);
conteo(y);
