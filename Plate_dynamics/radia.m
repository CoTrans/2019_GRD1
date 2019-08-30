function [qrad] = radia(Ti)
global thick Tamb
sig = 5.67e-8;
qrad = sig * (Ti^4 - Tamb^4) / thick;
end

