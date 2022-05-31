%convolusi sinyal sinus bernoise dengan raise cosine;


% sinyal raise cosine
clc;
n = -7: 0.5: 8;
for i = n:
if i ~= 0:
   y1 = sin(4*pi*n/8)./(4*pi*n/8);
else
    

% sinyal sinus asli
t = 0.1: .1: 8;
y2 = sin(2*pi*t/4);

% sinyal sinus + noise
t = 0.1: 0.1: 8;
y3 = sin(2*pi*t/4)+0.5*randn*sin(2*pi*10*t/4) + 0.2*randn*sin(2*pi*12*t/4);

% konvolusi sinus bernoise dan raise cosine
y4 = conv(y3, y1);

% 1st plot
subplot(311);
plot(n, y1,'linewidth',2)
title('Sinyal raise cosine')

% 3rd plot 
subplot(312);
plot(y3,'linewidth',2)
title('Sinyal sinus dengan noise')

% 4th plot
subplot(313);
plot(y4,'linewidth',2)
title('Sinyal hasil konvolusi')

% saveas(gcf, 'cos_4.jpg')