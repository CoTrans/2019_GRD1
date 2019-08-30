close all
hold on
plot (t(1:1000:18001),squeeze(T(6,3,1:1000:18001)),'x','Color','k');
plot (t(1:1000:18001),squeeze(Tq(6,3,1:1000:18001)),'o','Color','k');
plot (t(1:100:18001),squeeze(T(6,3,1:100:18001)),'-','Color','k');
plot (t(1:100:18001),squeeze(Tq(6,3,1:100:18001)),'-','Color','k');
legend('Lossless','Loss','Location','Northeast')
ylabel('Temp (K)')
xlabel('Time (s)')
title('Temperature at (1/4,1/2) position')