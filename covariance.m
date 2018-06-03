addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\actual test class labels'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\predicted test class labels'
csv1= csvread('predictedtestvalues0vs4.csv');
csv2= csvread('actualtestclass0vs4.csv');
c1= cov(csv1);
c2= cov(csv2);