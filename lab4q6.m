%% limpeza do ambiente
clc;
clear;
close all;

%% 6 item a
% a) Escolha uma imagem e gere a imagem desfocada (g) e a imagem recuperada após a
% filtragem inversa (f^). Utilizando PSF Gaussiana

im = imread('cameraman.tif');

IM = fft2(double(im));

[x y]=size(im);
[X Y]=meshgrid(1:x,1:y);
h=exp(-(X-x/2).^2/48)*exp(-(Y-y/2).^2/48);

H = 

