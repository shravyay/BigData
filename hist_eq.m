close all;
clear all;
addpath 'C:\Users\shrav\OneDrive\Documents\MATLAB'
input= imread('4.jpeg');
output= histeq(input);
figure;
imshowpair(input,output);
figure;
imhist(input);
figure;
imhist(output);