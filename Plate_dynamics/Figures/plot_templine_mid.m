close all
hold on
plot(x,T(:,14,12000),'-o','Color','k');
plot(x,Tq(:,14,12000),'-x','Color','k');
plot(x,50*x+273,'--','Color','k');
legend('Lossless','Loss','Ideal','Location','Northwest')
ylabel('Temp (K)')
xlabel('Position (×length)')
title('Temperature distribution alone mid-line at 3000s')