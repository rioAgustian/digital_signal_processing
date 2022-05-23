clc;
% sinyal awal
T = 100;
t = 0:1/T:2;
f1 = 1;
y1 = sin(2*pi*t);

% sinyal setelah penguatan
a = 3 ; % nilai a harus > 1
y1_amp = a*sin(2*pi*t);
k = log10(a);

% 1st plot
subplot(2,1,1);
plot(t, y1);
ylim([min(y1_amp) max(y1_amp)]);
title('Sinyal awal');

% 2nd plot
subplot(2,1,2);
plot(t, y1_amp);
title(['Sinyal setelah dikuatkan ', num2str(a), ' kali atau ', num2str(k), ' dB']);

% filename = 'amp_30.jpg';
% saveas(gcf, filename)