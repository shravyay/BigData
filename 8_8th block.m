
%   Clear and close command window
clear all;
close all;
%   adding the input file path into matlab
addpath 'C:\Users\shrav\OneDrive\Documents\MATLAB'
%   reading input image of jpeg file
input1 = imread('0.jpeg');
%   Dividing the original image of size 2592*3888 into 157464 blocks of size 8*8 
k=1;
%   declaring block size 8
a=8;
% looping through every pixel of the image(row*column) at intervals of 8 and obtaining
% cell arrays of 8*8 blocks
for i = 1:a:3168
    for j = 1:a:4752
%         cell arrays of 8*8 blocks(uint8) 
             pvsevere(:,:)= input1(i:i+7,j:j+7);
             pvsevere1(k,:)= reshape(pvsevere(:,:),1,64);
             k=k+1; 
    end
end
pvsevere2= reshape(pvsevere1(11013,:),8,8);
pvsevere(:,:)= pvsevere2;
for i = 1:a:3168
    for j = 1:a:4752
             if(pvsevere2==pvsevere)
                get(i,pvsevere)
                get(j,pvsevere)
             end 
    end
end
%   checking if it's correct 8*8 block that we are trying to access
portionOfImage = input1(201:208,1929:1936)
figure;
imshow(portionOfImage);