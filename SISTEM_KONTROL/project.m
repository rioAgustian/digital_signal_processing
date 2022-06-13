% Rio Agustian Gilang Fernando 4211420004
% UAS Analisis Sistem Fisis 2022

% kode berikut memberikan keluaran plot dari fungsi alih yang diberikan
% sistem yang ditinjau pada kode ini adalah pegas massa dengan tiga pegas
% dan hambatan udara tidak diabaikan
clc; clf; clear all;

m = 1;
f = 0.64;
k = 50;
num = [1];
den = [m f 3*k];
TF = tf(num, den)
step(TF);