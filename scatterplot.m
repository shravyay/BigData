addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\code'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\scatter plot csv files'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\figures'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\csv files without zeroes'
addpath 'C:\Users\shrav\OneDrive\Documents\MATLAB'
clear all;
close all;
csvgood= csvread('scattercsv0.csv');
csvsevere= csvread('scattercsv4.csv');
% f1=1;f2=2;f3=3;
 figure;
 % 3D scatter plot
 plot3(csvgood(:,f1),csvgood(:,f2),csvgood(:,f3),'r.');
 hold;
 plot3(csvsevere(:,f1),csvsevere(:,f2),csvsevere(:,f3),'.');
 grid;
 xlabel('feature1');ylabel('feature32');zlabel('feature64');
% imtool('scatterplot_eq_0vs2.png');