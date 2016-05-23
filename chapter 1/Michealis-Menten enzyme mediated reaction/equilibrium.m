function [ c, dp ] = equilibrium( s0,e0 )
%EQUILIBRIUM Summary of this function goes here
%   Detailed explanation goes here

[k1,km1,k2] = constants();

kk = (km1 + k2) / k1;

c = e0 * s0 / (kk + s0);
dp = k2 * c;

end

