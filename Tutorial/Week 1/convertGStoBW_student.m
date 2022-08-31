function [imgBW] = convertGStoBW_student(imgGS, threshold)

% Get the size of the input image
[rows, cols, channels] = size(imgGS);

%create an empty matrix for the binary image
imgBW = zeros(rows,cols);

for i = 1:rows
    for j = 1:cols
        % Your logic goes in here
        x = imgGS(i,j); %improvements: unnecessary to store the value, wasting space 
        if (x > threshold)
            x = 1;
        elseif (x < threshold)
            x = 0;
        end
        
        imgBW(i,j) = x;
                          
    end
end

imgBW = logical(imgBW);
imshow(imgBW);


end