<<<<<<< HEAD
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
imshow(I);
title('original');
subplot(1,3,2);
imshow(II);
title('Máscara');
subplot(1,3,3);
imshow(IV);
title('imagem filtrada');
figure;

%% questão 3 item b 


% b) Filtro ideal de realce. A ideia por trás do filtro ideal de suavização é muito simples: a partir do centro da imagem transformada,
% e após a aplicação da correção da centralização, devemos selecionar e zerar apenas as frequências localizadas a uma certa distância
% do centro, sendo as demais frequências mantidas. É essa distância a partir do centro que define o nível de realce do filtro: quanto
% maior a distância, maior ênfase as frequências mais altas. Mostra os detalhes da imagem. Após a criação do filtro, eu resultados
% deve ser somado a imagem original. Crie um código que:
% I: Leia a imagem. (Utilize 'shadow.tif')
% II: Crie uma máscara (utilize a função dada na questão 3) com as dimensões da imagem e raio=20.
% III: Inverta os valores lógicos de II, para que a máscara seja de realce.
% IV: Calcule a transformada de Fourier (utilize a função criada na questão 2 – letra a) recebendo a imagem e a máscara.
% V: Some o filtro (IV) a imagem (double).
% VI: Exiba a original, máscara e o resultado da suavização. Lembre-se de transformar o resultado da suavização para uint8
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
title('Máscara');
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
imshow(I);
title('original');
subplot(1,3,2);
imshow(II);
title('Máscara');
subplot(1,3,3);
imshow(IV);
title('imagem filtrada');
figure;

%% questão 3 item b 


% b) Filtro ideal de realce. A ideia por trás do filtro ideal de suavização é muito simples: a partir do centro da imagem transformada,
% e após a aplicação da correção da centralização, devemos selecionar e zerar apenas as frequências localizadas a uma certa distância
% do centro, sendo as demais frequências mantidas. É essa distância a partir do centro que define o nível de realce do filtro: quanto
% maior a distância, maior ênfase as frequências mais altas. Mostra os detalhes da imagem. Após a criação do filtro, eu resultados
% deve ser somado a imagem original. Crie um código que:
% I: Leia a imagem. (Utilize 'shadow.tif')
% II: Crie uma máscara (utilize a função dada na questão 3) com as dimensões da imagem e raio=20.
% III: Inverta os valores lógicos de II, para que a máscara seja de realce.
% IV: Calcule a transformada de Fourier (utilize a função criada na questão 2 – letra a) recebendo a imagem e a máscara.
% V: Some o filtro (IV) a imagem (double).
% VI: Exiba a original, máscara e o resultado da suavização. Lembre-se de transformar o resultado da suavização para uint8
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
title('Máscara');
subplot(1,3,3);
imshow(VI);
title('imagem filtrada');
figure;
>>>>>>> 059f2fc38f04f3987d00222ecf4146545fd6114d
