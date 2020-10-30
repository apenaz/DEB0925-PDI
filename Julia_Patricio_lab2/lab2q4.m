I = imread('toysnoflash.png');


x = 250;
y = 300;
gray_val = [I(y,x,1) I(y,x,2) I(y,x,3)];

B = chromadapt(I,gray_val);

figure
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(B);