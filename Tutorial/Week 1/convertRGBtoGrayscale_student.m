function [imgGS] = convertRGBtoGrayscale_student(imgRGB)

% Get the size of the input image
[rows, cols, channels] = size(imgRGB)

% Create an empty matrix for the new greyscale image
imgGS = zeros(rows,cols);

imgGS = zeros(rows,cols);

for i = 1:rows
    for j = 1:cols
        % Your logic goes in here
        R = 0.2989*imgRGB(i,j,1);
        G = 0.5870*imgRGB(i,j,2);
        B = 0.1140*imgRGB(i,j,3);
        
        value = ((R+G+B));
        imgGS(i,j) = value;

    end
end

imgGS = uint8(imgGS);
imshow(imgGS);


end