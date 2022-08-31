function [imgresult] = convolveKernel(input_img, kernel)
%% 3D
imgresult = convn(input_img,kernel,'same');

%% 2D 
imgresult = conv2(input_img,kernel,'same');

imgresult=uint8(imgresult);

imshow(imgresult)

end

