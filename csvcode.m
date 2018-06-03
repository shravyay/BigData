%   Clear and close command window
clear all;
close all;
%   adding the input file path into matlab
addpath 'C:\Users\shrav\OneDrive\Documents\MATLAB'
%   reading input image of jpeg file
input1 = imread('4_eq.png');
input2= imresize(input1, [760 783]);
%   Dividing the original image of size 2592*3888 into 157464 blocks of size 8*8 
%   Initializing row value for the single row vector of each 8*8 block
k=1;
%   declaring block size 8
a=8;
% looping through every pixel of the image(row*column) at intervals of 8 and obtaining
% cell arrays of 8*8 blocks
for i = 1:a:760
    for j = 1:a:783
%         cell arrays of 8*8 blocks(uint8) 
             pvsevere= input2(i:i+7,j:j+7);
%              reshaping cell arrays to single row vector of 64 columns for
%              each 8*8 block by indexing k
         pvsevere1(k,:)= reshape(pvsevere,1,64);
%          incrementing k 
        k=k+1;
    end
end
%   creating csv file of 64 features with 157464 observations
csvwrite('csvsevere4.csv',pvsevere1);
