%% limpeza do ambiente
clc;
clear;
close all;

%% questao 3 item a
% a) Filtro ideal de suavização. A ideia por trás do filtro ideal de suavização é muito simples: a partir do centro da imagem
% transformada, e após a aplicação da correção da centralização, devemos selecionar e manter apenas as frequências localizadas a
% uma certa distância do centro, sendo as demais frequências zeradas. É essa distância a partir do centro que define o nível de
% suavização do filtro: quanto menor a distância, maior a suavização. Crie um código que:
% I: Leia a imagem. (Utilize 'shadow.tif')
% II: Crie uma máscara (utilize a função dada na questão 3) com as dimensões da imagem e raio=20.
% III: Calcule a transformada de Fourier (utilize a função criada na questão 2 – letra a) recebendo a imagem e a máscara.
% IV: Exiba a original, máscara e o resultado da suavização. Lembre-se de transformar o resultado da suavização para uint8
% antes de exibir.
I = imread('shadow.tif');
II = mascaraIdeal(size(I,1),size(I,2),20);
III = mascaraFourier(I,II);
IV = uint8(III);

subplot(1,3,1);
title('imagem original');
imshow(I);
subplot(1,3,2);
title('Máscara');
imshow(II);
subplot(1,3,3);
title('imagem filtrada');
imshow(IV);
