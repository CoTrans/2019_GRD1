surf(x,y,Tq(:,:,10));
view(0,90)
shading interp;
pbaspect([1 1 1])
colorbar
c = colorbar;
c.Label.String = 'Temp (K)';
title ('Loss T=3000s')
%matlab2tikz('Figures/Tempmap_Loss_3000.tex')