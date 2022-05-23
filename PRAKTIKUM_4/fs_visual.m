clc;
% perngaruh frekuensi sampling terhadap satu periode sinyal
% Fs = frekuensi sampling
% sinyal 1
Fs1 = 30; 
t1 = (0:Fs1-1)/Fs1; % normalisasi
y1 = sin(2*pi*t1*2);

% sinyal 2
Fs2 = 16;
t2 = (0:Fs2-1)/Fs2; % normalisasi
y2=sin(2*pi*t2*2);

% 1st plot
subplot(211)
stem(t1, y1)
axis([0 1 -1.2 1.2])
title(['Frekuensi sampling = ', num2str(Fs1), ' Hz'])

% 2nd plot
subplot(212)
stem(t2, y2)
axis([0 1 -1.2 1.2])
title(['Frekuensi sampling = ', num2str(Fs2), ' Hz'])

filename = 'fs_30.jpg';
% saveas(gcf, filename)