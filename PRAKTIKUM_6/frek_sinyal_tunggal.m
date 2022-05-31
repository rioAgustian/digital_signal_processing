% cek: https://www.mathworks.com/help/matlab/ref/fft.html

Fs = 100;
t = (1:100)/Fs;
f = 5;
A = 5;
s = A * sin(2*pi*f*t);

n = 512; % n-points DFT
S = fft(s, 512);
w = (0:255)/256 * (Fs/2);

% 1st plot
subplot(211)
plot(t, s)
xlabel('Waktu')
title(['Amplitudo = ', num2str(A), ' volt; frekuensi = ', num2str(f), ' Hz'])

% 2nd plot
subplot(212)
plot(w, abs(S(1:256)))
xlabel('Frekuensi')

saveas(gcf, 'tunggal_5_5.jpg')