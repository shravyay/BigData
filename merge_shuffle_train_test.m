clear all;
close all;
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\labelled csv files'
csv1= csvread('labelcsvgood0.csv');
csv2= csvread('labelcsvsevere1.csv');
mergedata= [csv1;csv2];
csvwrite('merged_data01.csv', mergedata);
shuffledata= datasample(mergedata, 15860);
csvwrite('shuffled_data0vs1.csv', shuffledata);
rows= size(shuffledata,1);
trainSetRows =  round(0.80*rows);
% testSetRows = ceil(height(shuffledata)*0.2);
trainSet = shuffledata(1:trainSetRows, :);
csvwrite('Train80_01.csv', trainSet);
testSet = shuffledata(trainSetRows+1: end , :);
csvwrite('Test20_01.csv', testSet);
