function [Ti1] = Ti1(Ti,Tl,Tr,Tu,Td) % next time step temp l,r,u,d for left right up low in x and y dir.
global rho_cp k dx dt
Ti1 = dt/ rho_cp * (k * (Tl+Tr+Tu+Td-4*Ti) / dx^2) + Ti; % whithout heat loss
end

