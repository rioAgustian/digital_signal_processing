[y, Fs] = audioread('kerja.wav');

sound(y, Fs)
figure(1)
plot(y)
figure(2)
Y = fft(y);
plot((abs(Y(1:3400))))
