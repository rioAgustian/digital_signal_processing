clc; clf; clear all;

% 1. tentukan fungsi alih
% G(s) = 1 / (ms^2 + bs + k)

% 2. tentukan nilai parameter
m = 1;
b = 0.3;
k = 20;

% 3. tentukan numerator dan denominator
num = [1];
den = [m b k];
TF = tf(num, den);

% 4. plotting
step(TF, 1)