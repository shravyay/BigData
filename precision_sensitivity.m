addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\equalization_image files\actual train class labels'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\equalization_image files\actual test class labels'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\equalization_image files\predicted test class labels'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\equalization_image files\predicted train class labels'

target1= csvread('actualtestclass0vs1.csv');
output1= csvread('predictedtestvalues0vs1.csv');
c1= confusionmat(target1,output1);
TP= c1(1,1);
TN= c1(2,2);
FP= c1(2,1);
FN= c1(1,2);
precision1= 1/(1+(FP/TP));
sensitivity1= 1/(1+(FN/TP));
specificity1= 1/(1+(FP/TN));