clf; clc;
t = -3:6/1000:3;
N = 10000; % Jumlah sinyal
c = 0.5;
w = pi;
xN = c*ones(1, length(t));
for n=1: 2: N % ganjil
theta = ((-1)^((n-1)/2)-1)*pi/2;
xN = xN + (2/(n*pi)) * cos(n*w*t +theta);
end
plot(t, xN)
xlabel('t')
ylabel('x(t)')
title(['Jumlah sinyal = ', num2str(N)])

saveas(gcf, 'gibb_10000.jpg')