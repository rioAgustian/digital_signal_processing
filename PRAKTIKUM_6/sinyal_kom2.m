close all; clear all; clc;

Fs = 100;
t = (1:400)/Fs;
f1 = 1;
A = 10;
s1 = A * (2/pi)*sin(2*pi*f1*t);

f2 = 3;
s2 = A * (2/3/pi)*sin(2*pi*f2*t);
s = s1 + s2;

n = 512;
S = fft(s, n);
S_mag = abs(S(1:n/2+1));
w = (0:n/2) * (Fs/n);
 
subplot(2,1,1)
plot(t,s)
xlabel('time')

subplot(2,1,2)
plot(w, S_mag)
xlabel('frequency')

saveas(gcf, 'kom2_10_3.jpg')