slen = 100000;
sdev = 0.00001;
tseries = 0:sdev:(slen*sdev);

s01 = 100;
e01 = 1;
s02 = 100;
e02 = 3;
states1 = deduct(s01,e01,tseries);
[cstar1,dpstar1] = equilibrium(s01,e01);
states2 = deduct(s02,e02,tseries);
[cstar2,dpstar2] = equilibrium(s02,e02);

h = figure();
axpos = [0.1 0.1 0.8 0.8];

axes('Position', axpos);
plot(tseries,states1(:,4),'k');hold on;
plot(tseries,states2(:,4),'r');hold on;
plot(tseries(end),dpstar1*tseries(end),'ko');hold on;
plot(tseries(end),dpstar2*tseries(end),'ro');hold on;
set(gca, 'Color', 'none');
set(gca, 'YAxisLocation', 'left');
axes('Position', axpos);
plot(tseries,states1(:,1),'k--');hold on;
plot(tseries,states2(:,1),'r--');hold on;
set(gca, 'Color', 'none');
set(gca, 'YAxisLocation', 'right');

title({['s1 = ', int2str(states1(end,1))],...
    ['s2 = ', int2str(states2(end,1))]});