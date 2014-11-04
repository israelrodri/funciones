load('matlab.mat');
p=dis1_1;
t=getcls(p);
net = newff(minmax(p),[250,2],{'tansig','purelin'},'traingdm','traingdm','mse');
net.trainParam.lr = 0.3;
net.trainParam.epochs = 10000;
net = train(net, p, t);
y = sim(net, p);
conteo(y);
