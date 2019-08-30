%close all
clear
global thick Tamb rho_cp k dx dt

nx = 28; % x step
dt = .25; % time step
tmax = 3000; % time span

l = 0.7;
dx = l/nx;
thick = 0.01;
Tamb = 293;
rho_cp = 6.63e6; % overall rho*cp for dish and plate 
k = 160;
T0x = linspace(323,273,nx);
T0 = repmat (T0x,nx,1);
x = linspace(0,1,nx);
y = x;

t = 0:dt:tmax;

T = zeros(nx,nx,length(t));
T = repmat(T0,1,1,length(t)); % initial cond., 2D matrix for Temp - space, time T(x,t)
T(1,:,1:length(t)) = 273;
T(end,:,1:length(t)) = 323; % boundary condition
Tq = T; % this to include heat loss estimation

% imagesc(x,y,T(:,:,5));
% axis equal;
for i = 1:length(t)-1
    for m = 2:nx-1 % n.b. T(y,x,t)
        for n = 1:nx
            if n == 1 % boundary special as n-1 no value
                T(m,n,i+1) = Ti1(T(m,n,i),T(m,n,i),T(m,n+1,i),T(m-1,n,i),T(m+1,n,i));
                Tq(m,n,i+1) = Ti1q(Tq(m,n,i),Tq(m,n,i),Tq(m,n+1,i),Tq(m-1,n,i),Tq(m+1,n,i));
            elseif n == nx
                T(m,n,i+1) = Ti1(T(m,n,i),T(m,n-1,i),T(m,n,i),T(m-1,n,i),T(m+1,n,i));
                Tq(m,n,i+1) = Ti1q(Tq(m,n,i),Tq(m,n-1,i),Tq(m,n,i),Tq(m-1,n,i),Tq(m+1,n,i));
            else
                T(m,n,i+1) = Ti1(T(m,n,i),T(m,n-1,i),T(m,n+1,i),T(m-1,n,i),T(m+1,n,i));
                Tq(m,n,i+1) = Ti1q(Tq(m,n,i),Tq(m,n-1,i),Tq(m,n+1,i),Tq(m-1,n,i),Tq(m+1,n,i));
            end
        end
    end
end
%save('Data_27_3000s_25')