clc
% sinyal awal
T = 100;
t = 0:1/T:2;
f1 = 1;
y1 = sin(2*pi*t);

% sinyal setelah pelemahan
a = 0.75; % nilai a harus < 1
y1_att = a*sin(2*pi*t);

% 1st plot
subplot(2,1,1);
plot(t, y1);
title('Sinyal awal');

% 2nd plot
subplot(2,1,2);
plot(t, y1_att);
ylim([min(y1), max(y1)]);
title(['Sinyal setelah dilemahkan ', num2str(a), '  kali']);

% filename = 'att_075.jpg';
% saveas(gcf, filename)