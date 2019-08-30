function [qconv] = convec(Ti)
global thick Tamb
h = 4.9;
qconv = h * (Ti-Tamb) / thick;
end

