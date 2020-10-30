hand = imread('Lena.jpg');
imshow(hand);
A = rgb2gray(hand);

C = medfilt2(A);

subplot(3,2,1);
F=fft2(double(A));
S=fftshift(F);
L=log2(S);
B=abs(L);
imagesc(B)

subplot(3,2,2);
f=fft2(double(C));
s=fftshift(f);
l=log2(s);
b=abs(l);
imagesc(b)

subplot(3,2,3);
imshow(A);

subplot(3,2,4);
imshow(C);

subplot(3,2,5);
histogram(A);

subplot(3,2,6);
histogram(C);