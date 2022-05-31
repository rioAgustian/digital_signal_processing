clc; clear sound;

% audio awal
[y1, Fs] = audioread('kahitna.wav');
%sound(y1, Fs)

% audio dengan noise
noise = randn(length(y1), 1);
y2 = y1 + 0.1*noise;
% sound(y2, Fs)

y3 = ones(4, 1);
% conv2 bekerja pada matriks 2 dimensi
konv = conv2(y3, y2);
sound(konv, Fs)

plot(konv)
saveas(gcf, 'audio_konv2.jpg')

filename = 'kahitna_noise2.wav';
audiowrite(filename, konv, Fs)