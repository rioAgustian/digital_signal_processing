clc;
% sinyal dengan f = 1 Hz
T = 100;
t = 0:1/T:2;
f1 = 1;
y1 = sin(2*pi*f1*t);

% sinyal dengan f dan fase yang diubah-ubah
f2 = 3;
k = 0.5;
pha2 = k*pi;
y2 = sin(2*pi*f2*t + pha2);

% penjumlahan sinyal
y3 = y1 + y2;

% 1st  plot
subplot(3,1,1);
plot(t, y1);
text = ('Sinyal dengan f = 1 Hz; \theta = 0 rad');
title(text);

% 2nd plot
subplot(3,1,2);
plot(t, y2);
text = (['Sinyal dengan f = ', num2str(f2), ' Hz; \theta =', num2str(k), '\pi rad']);
title(text);

% 3rd plot
subplot(3,1,3);
plot(t, y3);
title('Sinyal hasil penjumlahan');