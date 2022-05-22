clc;
% sinyal asli. Fs = frekuensi sampling
[y1, Fs] = audioread('spiderman.wav');

% sinyal dengan noise
N = length(y1);
var = 0.1;
noise = var * randn(N, 1);
y2 = y1 + noise;

% memainkan audio
% sound(y2, Fs);

% 1st plot
subplot(2,1,1);
plot(y1);
title('Sinyal asli');

% 2nd plot
subplot(2,1,2);
plot(y2);
title('Sinyal dengan noise');