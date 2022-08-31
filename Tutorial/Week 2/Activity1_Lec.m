classdef Activity1_Lec < handle
    methods (Static)
        function CameraProjection
            clc;
            clear;
            %% 3D Point
            x = 15;
            y = 10;
            z = 80;
            
            %% Principal point: as it is given then the 3D point is offset
            px = 520;
            py = 389;
            
            %% Focal point
            f = 935;
            
            %% Calculation 
            u = f*x/z+px
            v = f*y/z+py
            
            
        end
        
        function HomogeneousTransform
            clc;
            clear;
            %% K = camera calibration matrix value
            K = [935,0,520;
                0,935,389;
                0,0,1];
            %% Homogeneous transform
            X = [15;10;80;1]; % 3D point as homoegeneous transform
            P = eye(3,4); % Identity matrix
            x = K*P*X; % Camera calibration * Identity matrix * 3D point
            u = x(1)/x(3) % x/z
            v = x(2)/x(3) % y/z
            
        end
    end
end