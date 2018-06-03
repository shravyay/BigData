clear all;
close all;
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\equalization_image files\csv files without zeroes'
csvsevere= csvread('csvseverewithoutzeroes1.csv');
csvgood= csvread('csvgoodwithoutzeroes0.csv');

mean1= mean(csvgood);
deviation1= std(csvgood);
mean2= mean(csvsevere);
deviation2= std(csvsevere);
figure;
plot(mean1,'color','blue');
hold;
plot(mean2,'color','red');grid;
xlabel('feature_index');
ylabel('mean');
figure;
plot(deviation1,'color','blue');
hold;
plot(deviation2,'color','red');grid;
xlabel('feature_index');
ylabel('deviation');
