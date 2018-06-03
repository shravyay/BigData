addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\training set csv files with labels'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\testing set csv files'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\training set csv files without labels for accuracy'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\actual test class labels'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\predicted test class labels'
target1= csvread('actualtrainclass0vs4.csv');
output1= csvread('predictedtrainvalues0vs4.csv');
c1= confusionmat(target1,output1);
accuracy1= sum(target1==output1)/numel(target1)*100;
target2= csvread('actualtestclass0vs4.csv');
output2= csvread('predictedtestvalues0vs4.csv');
c2= confusionmat(target2,output2);
accuracy2= sum(target2==output2)/numel(target2)*100;
target3= csvread('actualtrainclass0vs3.csv');
output3= csvread('predictedtrainvalues0vs3.csv');
c3= confusionmat(target3,output3);
accuracy3= sum(target3==output3)/numel(target3)*100;
target4= csvread('actualtestclass0vs3.csv');
output4= csvread('predictedtestvalues0vs3.csv');
c4= confusionmat(target4,output4);
accuracy4= sum(target4==output4)/numel(target4)*100;
target5= csvread('actualtrainclass0vs2.csv');
output5= csvread('predictedtrainvalues0vs2.csv');
c5= confusionmat(target5,output5);
accuracy5= sum(target5==output5)/numel(target5)*100;
target6= csvread('actualtestclass0vs2.csv');
output6= csvread('predictedtestvalues0vs2.csv');
c6= confusionmat(target6,output6);
accuracy6= sum(target6==output6)/numel(target6)*100;
target7= csvread('actualtrainclass0vs1.csv');
output7= csvread('predictedtrainvalues0vs1.csv');
c7= confusionmat(target7,output7);
accuracy7= sum(target7==output7)/numel(target7)*100;
target8= csvread('actualtestclass0vs1.csv');
output8= csvread('predictedtestvalues0vs1.csv');
c8= confusionmat(target8,output8);
accuracy8= sum(target8==output8)/numel(target8)*100;