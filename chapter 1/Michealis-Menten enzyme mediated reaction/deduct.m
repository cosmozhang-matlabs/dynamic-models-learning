function [ states ] = deduct( s0,e0,tseries )

len = max(size(tseries));
states = zeros(len,4);
states(1,:) = [s0,e0,0,0];

for i = 2:len
    dt = tseries(i) - tseries(i-1);
    [ds,de,dc,dp] = deviations(states(i-1,1),states(i-1,2),states(i-1,3),states(i-1,4));
    states(i,:) = states(i-1,:) + [ds,de,dc,dp] * dt;
end

end

