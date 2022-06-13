% Rio Agustian Gilang Fernando 4211420004
% UAS Analisis Sistem Fisis 2022

% kode berikut memberikan keluaran plot dari fungsi alih yang diberikan
% sistem yang ditinjau pada kode ini adalah pegas-piston
clc; clf; clear all;

m = 320;
f = 350;
k = 8e4;
num = [1];
den = [m f k];
TF = tf(num, den)
step(TF);