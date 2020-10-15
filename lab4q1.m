%% limpar console e variaveis e fechar janelas abertas
clc;
clear;
close all;
%% 1.a
IMG = imread('cameraman.tif');
imshow(IMG);
figure;
I  = fft2(double(IMG));
II = log(abs(I));
imshow(II, [0 20]);
figure;
IV = fftshift(I);
V = log(abs(II));
imshow(V, [0 20]);
%% b) Explique porque é necessário centralizar as frequências.
