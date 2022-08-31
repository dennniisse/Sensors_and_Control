clear
clc

I = imread('image2.png');

% convertRGBtoGrayscale_student(I);


Ig = rgb2gray(I);
% convertGStoBW_student(Ig, graythresh(Ig)*250);

Ig = im2bw(Ig,graythresh(Ig));

%% Save IG as an existing file 
imwrite(Ig, 'Task2.6.png')

imshow(Ig);

% I1 = imread('image1.png')
% imwrite(I1,'image1.jpg')
% I2 = imread('image1.jpg')
% imshow([I1, Ig])


