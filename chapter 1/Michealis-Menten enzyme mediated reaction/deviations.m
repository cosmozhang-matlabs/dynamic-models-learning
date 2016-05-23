function [ ds,de,dc,dp ] = deviations( s,e,c,p )

[k1,km1,k2] = constants();

ds = km1 * c - k1 * e * s;
de = (km1 + k2) * c - k1 * e * s;
dc = k1 * e * s - (km1 + k2) * c;
dp = k2 * c;

end

