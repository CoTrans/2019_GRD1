close all
hold on
plot(x,Tq(:,7,12000),'-o','Color','k');
plot(x,Tq(:,14,12000),'-x','Color','k');
plot(x,Tq(:,21,12000),'-^','Color','k');
plot(x,50*x+273,'--','Color','k');
legend('1/4 position','1/2 position','3/4 position','Ideal','Location','Northwest')
ylabel('Temp (K)')
xlabel('Position (×length)')
title('Temperature distribution at 3000s on Loss model')