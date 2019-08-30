dT00 = squeeze(Tq(2,1,:))-squeeze(Tq(1,1,:));
p = 160*0.01*0.7.*dT00/(0.7/28);
plot(t,p);