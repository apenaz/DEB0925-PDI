I = imread('lab2_4.jpg');
threshRGB = multithresh(I,4);

threshForPlanes = zeros(3,4);			

for i = 1:3
    threshForPlanes(i,:) = multithresh(I(:,:,i),4);
end

quantPlane = zeros( size(I) );

for i = 1:3
    value = [0 threshForPlanes(i,2:end) 255]; 
    quantPlane(:,:,i) = imquantize(I(:,:,i),threshForPlanes(i,:),value);
end

quantPlane = uint8(quantPlane);
quantPlane = rgb2gray(quantPlane);

RGB = label2rgb(quantPlane); 	 

subplot(1,2,1);
imshow(I); 
subplot(1,2,2);
imshow(RGB);
