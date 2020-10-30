hand = imread('hand_db/hand1.jpeg');
imshow(hand);
A = rgb2gray(hand);
imshow(A);

B = imnoise(A,'gaussian');

C = medfilt2(B);

b = im2double(B);
w=fspecial('gaussian',[3,3]);
geom=exp(imfilter(log(b),ones(3,3),'replicate')).^(1/3/3);
D=imfilter(b,w,'replicate');


subplot(2,2,1);
histogram(A);

subplot(2,2,2);
histogram(B);

subplot(2,2,3);
histogram(C);

subplot(2,2,4);
histogram(D);

