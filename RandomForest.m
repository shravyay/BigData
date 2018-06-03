close all;
clear all;
rng default
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\training set csv files with labels'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\testing set csv files'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\training set csv files without labels for accuracy'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\actual test class labels'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\actual train class labels'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\predicted test class labels'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\predicted train class labels'
% The first 64 columns represent the features.
% The last column represents the class label (what we want to predict in test data)
trainData = csvread('Train80_01.csv'); 
features = trainData(:,(1:64))
classLabels = trainData(:,65)
trainData1= csvread('Train80nolabels_01.csv');
% Number of trees in the forest? 
nTrees = 200;
 testData = csvread('Test20_01.csv');
% TreeBagger is Random forest algorithm used in Matlab.
% Train the TreeBagger (Decision Forest).
B = TreeBagger(nTrees,features,classLabels, 'Method', 'classification');
% new dataset WITH the features and WITHOUT the class label
 predictedTestClass = B.predict(testData);
 csvwrite('predictedtestvalues0vs1.csv',predictedTestClass); 
predictedTrainClass = B.predict(trainData1);
csvwrite('predictedtrainvalues0vs1.csv',predictedTrainClass); 

target1= csvread('actualtrainclass0vs1.csv');
output1= csvread('predictedtrainvalues0vs1.csv');
c1= confusionmat(target1,output1);
accuracy1= sum(target1==output1)/numel(target1)*100;

target2= csvread('actualtestclass0vs1.csv');
output2= csvread('predictedtestvalues0vs1.csv');
c2= confusionmat(target2,output2);
accuracy2= sum(target2==output2)/numel(target2)*100;
