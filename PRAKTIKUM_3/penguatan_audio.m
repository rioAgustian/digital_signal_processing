clc;
y1= audioread('spiderman.wav');
Fs = 44000;
% sound(y1, Fs)

amp = 1.5;
y2 = amp * y1;
% sound(y2, Fs)

% sinyal asli
subplot(2,1,1)
plot(y1)
title('Sinyal asli')

% sinyal yang dikuatkan
subplot(2,1,2)
plot(y2)
title('Sinyal yang dikuatkan')