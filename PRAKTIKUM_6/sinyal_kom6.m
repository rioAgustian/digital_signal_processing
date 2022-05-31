close all; clear all; clc;

Fs = 100;
t = (1:200)/Fs;
f1 = 1;
f2 = 3;
f3 = 5;
f4 = 7;
f5 = 9;
f6 = 11;

s1 = (2/pi) * sin(2*pi*f1*t);
s2 = (2/3/pi) * sin(2*pi*f2*t);
s3 = (2/5/pi) * sin(2*pi*f3*t);
s4 = (2/7/pi) * sin(2*pi*f4*t);
s5 = (2/9/pi) * sin(2*pi*f5*t);
s6 = (2/11/pi) * sin(2*pi*f6*t);
s = s1 + s2 + s3 + s4 + s5 + s6;

subplot(211)
plot(t, s)
xlabel('time')

n = 512;
S = fft(s, n);
S_mag = abs(S(1:n/2 + 1));
w = (0:n/2) * (Fs/n);

subplot(212)
plot(w, S_mag)
xlabel('frequency')

% saveas(gcf, 'kom6.jpg')