%% limpeza do ambiente
clc;
clear;
close all;

%% questao 3 item a
% a) Filtro ideal de suaviza��o. A ideia por tr�s do filtro ideal de suaviza��o � muito simples: a partir do centro da imagem
% transformada, e ap�s a aplica��o da corre��o da centraliza��o, devemos selecionar e manter apenas as frequ�ncias localizadas a
% uma certa dist�ncia do centro, sendo as demais frequ�ncias zeradas. � essa dist�ncia a partir do centro que define o n�vel de
% suaviza��o do filtro: quanto menor a dist�ncia, maior a suaviza��o. Crie um c�digo que:
% I: Leia a imagem. (Utilize 'shadow.tif')
% II: Crie uma m�scara (utilize a fun��o dada na quest�o 3) com as dimens�es da imagem e raio=20.
% III: Calcule a transformada de Fourier (utilize a fun��o criada na quest�o 2 � letra a) recebendo a imagem e a m�scara.
% IV: Exiba a original, m�scara e o resultado da suaviza��o. Lembre-se de transformar o resultado da suaviza��o para uint8
% antes de exibir.
I = imread('shadow.tif');
II = mascaraIdeal(size(I,1),size(I,2),20);
III = mascaraFourier(I,II);
IV = uint8(III);

subplot(1,3,1);
title('imagem original');
imshow(I);
subplot(1,3,2);
title('M�scara');
imshow(II);
subplot(1,3,3);
title('imagem filtrada');
imshow(IV);
