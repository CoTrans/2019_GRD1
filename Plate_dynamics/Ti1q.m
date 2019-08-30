function [Ti1q] = Ti1q(Ti,Tl,Tr,Tu,Td) % next time step temp l,r,u,d for left right up low in x and y dir.
global rho_cp k dx dt
q = convec(Ti) + radia(Ti);
Ti1q = dt/ rho_cp * (k * (Tl+Tr+Tu+Td-4*Ti) / dx^2 - q) + Ti; % with heat loss
end

