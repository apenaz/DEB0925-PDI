% read the original image
I = imread('lab2_1.jpg');
% call createMask function to get the mask and the filtered image
[BW, BW1, BW2,maskedRGBImage, maskedRGBImage1, maskedRGBImage2] = createMask(I);
% plot the original image, mask and filtered image all in one figure
subplot(1,3,1);imshow(maskedRGBImage1);title('Cor 1');
subplot(1,3,2);imshow(maskedRGBImage2);title('Cor 2');
subplot(1,3,3);imshow(maskedRGBImage);title('Duas cores');

function [BW, BW1, BW2,maskedRGBImage, maskedRGBImage1, maskedRGBImage2] = createMask(RGB) 
% Convert RGB image to HSV image
I = rgb2hsv(RGB);
% Define thresholds for 'Hue'. Modify these values to filter out different range of colors.
channel1Min = 0.100;
channel1Max = 0.1500;
% Define thresholds for 'Saturation'
channel2Min = 0.500;
channel2Max = 1.000;
% Define thresholds for 'Value'
channel3Min = 0.500;
channel3Max = 1.000;

% Define thresholds for 'Hue'. Modify these values to filter out different range of colors.
channel1Min2 = 0.400;
channel1Max2 = 0.600;
% Define thresholds for 'Saturation'
channel2Min2 = 0.000;
channel2Max2 = 1.000;
% Define thresholds for 'Value'
channel3Min2 = 0.000;
channel3Max2 = 0.800;

% Create mask based on chosen histogram thresholds
BW1 = ( (I(:,:,1) >= channel1Min) & (I(:,:,1) <= channel1Max) ) & ...
    (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
    (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);

BW2 = ( (I(:,:,1) >= channel1Min2) & (I(:,:,1) <= channel1Max2) ) & ...
    (I(:,:,2) >= channel2Min2 ) & (I(:,:,2) <= channel2Max2) & ...
    (I(:,:,3) >= channel3Min2 ) & (I(:,:,3) <= channel3Max2);

BW = ( ((I(:,:,1) >= channel1Min) & (I(:,:,1) <= channel1Max) ) | ...
    (I(:,:,1) >= channel1Min2) & (I(:,:,1) <= channel1Max2)) & ...
    ((I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) |...
    (I(:,:,2) >= channel2Min2 ) & (I(:,:,2) <= channel2Max2)) & ...
    ((I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max) | ...
    (I(:,:,3) >= channel3Min2 ) & (I(:,:,3) <= channel3Max2));
% Initialize output masked image based on input image.
maskedRGBImage = RGB;
maskedRGBImage1 = RGB;
maskedRGBImage2 = RGB;
% Set background pixels where BW is false to zero.
maskedRGBImage(repmat(~BW,[1 1 3])) = 0;
maskedRGBImage1(repmat(~BW1,[1 1 3])) = 0;
maskedRGBImage2(repmat(~BW2,[1 1 3])) = 0;

end