%%%
clear;
clc;
close all;
%%%

% questão 2
% 2. Comandos básicos para imagens coloridas
% a) Utilize a função “imfinfo” para ler a imagem do matlab 'greens.jpg'. Cite quais informações são relevantes no processamento digital da
% imagem.
A = imread('greens.jpg');
imfinfo('greens.jpg');

% ans = 
% 
%            Filename: 'C:\Program Files\MATLAB\MATLAB Production Server\R2015a\toolbox\images\imdata\greens.jpg'
%         FileModDate: '01-Mar-2001 09:52:38'
%            FileSize: 74948
%              Format: 'jpg'
%       FormatVersion: ''
%               Width: 500
%              Height: 300
%            BitDepth: 24
%           ColorType: 'truecolor'
%     FormatSignature: ''
%     NumberOfSamples: 3
%        CodingMethod: 'Huffman'
%       CodingProcess: 'Sequential'
%             Comment: {}

% b) Exibição de imagens coloridas:
% • imshow: Requer que a matriz 2D especificada para a exibição se conforme a um tipo de imagem (por exemplo, imagens de
% intensidade/em cores com valor entre 0-1 ou 0-255)
% • imagesc: aceita qualquer tipo de dado (uint8, uint16 ou duplo) e qualquer faixa de valor numérico. Ela ajusta a faixa de valores
% dos dados de entrada e exibe a imagem usando o mapa de cor atual ou default.
% 1) Gere uma matriz aleatória (rand(256)) multiplicada por 1000 e exiba com as duas funções.
I = rand(256);
Imil = I * 1000;
uintoito = uint8(Imil); % criada apenas para apresentar o overflow na conversão de tipo
% 2) Explique a diferença entre o uso do imagesc e imshow nessa imagem.
figure();
imshow(Imil);
title('imshow');
figure();
imagesc(Imil);
title('imagesc');

%3) Utilize o imshow especificando a faixa de dados para que o resultado de imshow torne-se igual a imagesc.
figure();
imshow(Imil,[0 1000]);
title('imshow com faixa de dados');
figure();
imagesc(Imil);
colorbar;
title('imagesc colorbar');
% 4) Utilize a função imtool para fazer uma navegação com o cursor sobre a imagem da letra a. Escreva uma coordenada onde há
% predominância da banda R sobre as demais, nesse formato: Pixel info(X,Y) [R G B].
imtool(Imil)
% c) Transforme a imagem RGB (letra a) para HSI e depois converta novamente para RGB. Exiba as duas transformações e a matiz,
% saturação e brilho.

HSI = rgb2hsi(A);
RGB = hsi2rgb(HSI);
figure();
subplot(2,3,1);
imshow(A);
title('original')
subplot(2,3,2);
imshow(HSI);
title('HSI');
subplot(2,3,3);
imshow(RGB);
title('rgb');

subplot(2,3,4);
imshow(HSI(:,:,1));
title('H');
subplot(2,3,5);
imshow(HSI(:,:,2));
title('S');
subplot(2,3,6);
imshow(HSI(:,:,3));
title('I');



% d) Transforme a imagem RGB (letra a) para HSV e depois converta novamente para RGB. Exiba as duas transformações e a matiz,
% saturação e Valor.
Ihsv = rgb2hsv(A);
figure();
subplot(2,3,1);
imshow(A);
title('original')
subplot(2,3,2);
imshow(Ihsv);
title('hsv');
subplot(2,3,3);
Irgb = hsv2rgb(Ihsv);
imshow(Irgb);
title('rgb');

subplot(2,3,4);
imshow(Ihsv(:,:,1));
title('H');
subplot(2,3,5);
imshow(Ihsv(:,:,2));
title('S');
subplot(2,3,6);
imshow(Ihsv(:,:,3));
title('V');

% e) Compare os resultados das transformações em (c) e (d)




%%%% refazendo o processo com a matriz com as componentes RGB
I = rand(256);
I(:,:,2) = rand(256);
I(:,:,3) = rand(256);
Imil = I * 1000;
uintoito = uint8(Imil);
% 2) Explique a diferença entre o uso do imagesc e imshow nessa imagem.
figure();
imshow(Imil);
title('imshow RGB');
figure();
imagesc(Imil);
title('imagesc  RGB');

%3) Utilize o imshow especificando a faixa de dados para que o resultado de imshow torne-se igual a imagesc.
figure();
imshow(Imil,[0 1000]);
title('imshow com faixa de dados RGB');
figure();
imagesc(Imil);
colorbar;
title('imagesc colorbar RGB');


