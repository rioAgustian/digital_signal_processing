% Rio Agustian Gilang Fernando 4211420004
% UAS Analisis Sistem Fisis 2022

% kode berikut memberikan keluaran plot dari fungsi alih yang diberikan
% sistem yang ditinjau pada kode ini adalah sistem elektrik
clc; clf; clear all;

R = 1000;
L = 1e-3;
C = 1e-6;
num = [1];
den = [L*C R*C 1];
TF = tf(num, den)
step(TF,0.01);