clc;
clear sound;
% sinyal asli. Fs = frekuensi sampling
[y1, Fs] = audioread('spiderman.wav');

% sinyal dengan noise
N = length(y1);
var = 0.5;
noise = var * randn(N, 1);
y2 = y1 + noise;

% memainkan audio
sound(y2, Fs);

% 1st plot
subplot(2,1,1);
plot(y1);
title('Sinyal asli');

% 2nd plot
subplot(2,1,2);
plot(y2);
title(['Sinyal dengan noise; var = ', num2str(var)]);

% filename = 'spiderman_05.wav';
% audiowrite(filename, y1, Fs)
% 
% saveas(gcf, 'spiderman_05.jpg')