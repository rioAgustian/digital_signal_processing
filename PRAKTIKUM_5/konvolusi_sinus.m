% membangkitkan dua sinyal sinus 
% dan melakukan operasi konvolusi untuk keduanya
clc;
L = 20;         % banyak titik sampel(>=20)
f1 = 1;       % frekuensi gelombang 1 (Hz)
f2 = 0.5;       % frekuensi gelombang 2 (Hz)
teta1 = 0;      % fase gelombang 1(rad)
teta2 = 0.5;    % fase gelombang 1(rad)
A1 = 1;         % amplitudo gel 1
A2 = 1;         % amplitudo gel 2

% gelombang 1
t = 1:L;
t = 2*t/L;
y1 = A1*sin(2*pi*f1*t + teta1*pi);

% gelombang 2
y2 = A2*sin(2*pi*f2*t + teta2*pi);

% konvolusi
konv = conv(y1, y1);

% 1st plot
subplot(311)
stem(y1)
title(['f = ', num2str(f1), ' Hz; \theta = ', num2str(teta1), ' rad'])

% 2nd plot
subplot(3,1,2)
stem(y2)
title(['f = ', num2str(f2), ' Hz; \theta = ', num2str(teta2), ' rad'])

% 3rd plot
subplot(313)
stem(konv)
title('Hasil konvolusi')

% saveas(gcf, 'sin_2.jpg')