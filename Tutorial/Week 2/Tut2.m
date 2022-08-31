classdef Tut2 < handle
    methods (Static)
        %% Part 1
        function CamCal
            clc;
            clear;
            
            %% Change this values using calibration values
            px = 1;
            py = 1;
            fx = 1;
            fy = 1;
            X_cam = [8 ; 5 ; 80 ; 1];
            
            %% Calculation process
            IM = eye(3,4)
            K = [fx, 0, px;
                0, fy, py;
                0, 0, 1];
            
            x = K*IM*X_cam;
            
            u = x(1)/x(3)
            v = x(2)/x(3)
            
            
            
        end
        
        %% Part 2
        function Convolution
            clc;
            clear;
            
            I=imread('Sydney_Harbour_Bridge_from_Circular_Quay.jpg'); %Read image
            
            %Convert to gray scale
            GSI=rgb2gray(I);
            
            %Define kernal
            kern=[0 -1 0;-1 5 -1; 0 -1 0];
            
            %Call convolution function
            
            imgresult = convolveKernel(I,kern);
            
            figure(1);
            imshow(I);
            title('Original');
            
            figure(2);
            imshow(GSI);
            title('Gray scale');
            
            figure(3);
            imshow(imgresult);
            title('Img result');
            
        end
        
        function CalcHomo
            clc;
            clear;
            
            
            
            
        end
        
    end
end