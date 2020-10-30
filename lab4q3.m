<<<<<<< HEAD
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
imshow(I);
title('original');
subplot(1,3,2);
imshow(II);
title('M�scara');
subplot(1,3,3);
imshow(IV);
title('imagem filtrada');
figure;

%% quest�o 3 item b 


% b) Filtro ideal de realce. A ideia por tr�s do filtro ideal de suaviza��o � muito simples: a partir do centro da imagem transformada,
% e ap�s a aplica��o da corre��o da centraliza��o, devemos selecionar e zerar apenas as frequ�ncias localizadas a uma certa dist�ncia
% do centro, sendo as demais frequ�ncias mantidas. � essa dist�ncia a partir do centro que define o n�vel de realce do filtro: quanto
% maior a dist�ncia, maior �nfase as frequ�ncias mais altas. Mostra os detalhes da imagem. Ap�s a cria��o do filtro, eu resultados
% deve ser somado a imagem original. Crie um c�digo que:
% I: Leia a imagem. (Utilize 'shadow.tif')
% II: Crie uma m�scara (utilize a fun��o dada na quest�o 3) com as dimens�es da imagem e raio=20.
% III: Inverta os valores l�gicos de II, para que a m�scara seja de realce.
% IV: Calcule a transformada de Fourier (utilize a fun��o criada na quest�o 2 � letra a) recebendo a imagem e a m�scara.
% V: Some o filtro (IV) a imagem (double).
% VI: Exiba a original, m�scara e o resultado da suaviza��o. Lembre-se de transformar o resultado da suaviza��o para uint8
% antes de exibir.
I = imread('shadow.tif');
II = mascaraIdeal(size(I,1),size(I,2),20);
III = not(II);
IV = mascaraFourier(I,III);
V = IV + double(I);
VI = uint8(V);

subplot(1,3,1);
imshow(I);
title('original');
subplot(1,3,2);
imshow(III);
title('M�scara');
subplot(1,3,3);
imshow(VI);
title('imagem filtrada');
figure;
=======
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
imshow(I);
title('original');
subplot(1,3,2);
imshow(II);
title('M�scara');
subplot(1,3,3);
imshow(IV);
title('imagem filtrada');
figure;

%% quest�o 3 item b 


% b) Filtro ideal de realce. A ideia por tr�s do filtro ideal de suaviza��o � muito simples: a partir do centro da imagem transformada,
% e ap�s a aplica��o da corre��o da centraliza��o, devemos selecionar e zerar apenas as frequ�ncias localizadas a uma certa dist�ncia
% do centro, sendo as demais frequ�ncias mantidas. � essa dist�ncia a partir do centro que define o n�vel de realce do filtro: quanto
% maior a dist�ncia, maior �nfase as frequ�ncias mais altas. Mostra os detalhes da imagem. Ap�s a cria��o do filtro, eu resultados
% deve ser somado a imagem original. Crie um c�digo que:
% I: Leia a imagem. (Utilize 'shadow.tif')
% II: Crie uma m�scara (utilize a fun��o dada na quest�o 3) com as dimens�es da imagem e raio=20.
% III: Inverta os valores l�gicos de II, para que a m�scara seja de realce.
% IV: Calcule a transformada de Fourier (utilize a fun��o criada na quest�o 2 � letra a) recebendo a imagem e a m�scara.
% V: Some o filtro (IV) a imagem (double).
% VI: Exiba a original, m�scara e o resultado da suaviza��o. Lembre-se de transformar o resultado da suaviza��o para uint8
% antes de exibir.
I = imread('shadow.tif');
II = mascaraIdeal(size(I,1),size(I,2),20);
III = not(II);
IV = mascaraFourier(I,III);
V = IV + double(I);
VI = uint8(V);

subplot(1,3,1);
imshow(I);
title('original');
subplot(1,3,2);
imshow(III);
title('M�scara');
subplot(1,3,3);
imshow(VI);
title('imagem filtrada');
figure;
>>>>>>> 059f2fc38f04f3987d00222ecf4146545fd6114d
