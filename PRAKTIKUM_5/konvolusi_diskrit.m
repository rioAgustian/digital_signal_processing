clc;
% membuat sinyal unit step pertama
L = 12;
P = 12;
for n = 1:L
    if n <= P
        x(n) = 1;
    else
        x(n) = 0;
    end
end
t = 1:L;
% membuat sinyal unit step kedua
for n = 1:L
    if n <= P
        v(n) = 1;
    else
        v(n) = 0;
    end
end
% konvolusi
konv = conv(x, v);
% 1st plot
subplot(311);
stem(x);
title(['x[n]; L = ', num2str(L), '; P = ', num2str(P)]);
% 2nd plot
subplot(312);
stem(v);
title(['v[n]; L = ', num2str(L), '; P = ', num2str(P)]);
% 3rd plot
subplot(313);
stem(konv);
title('x[n]*v[n]');

saveas(gcf, 'dis_12_12.jpg')