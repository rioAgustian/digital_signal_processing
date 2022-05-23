% pengaruh frekuensi sampling melalui sinyal audio
clear sound;
clc;

% Fs = frekuensi sampling
Fs = 1000;
t = 0:1/Fs:5;
f = 500;
y = sin(2*pi*f*t);
sound(y, Fs)

% filename = '900_hz.wav';
% audiowrite(filename, y, Fs)