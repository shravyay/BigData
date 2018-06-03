addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\equalization_image files\normalized csv files'
input0= csvread('normalized_0.csv');
input1= csvread('normalized_1.csv');
input2= csvread('normalized_2.csv');
input3= csvread('normalized_3.csv');
input4= csvread('normalized_4.csv');

for i= 1:64
standard0(:,i)= (input0(:,i)- mean(input0(:,i)))/std(input0(:,i));
standard1(:,i)= (input1(:,i)- mean(input1(:,i)))/std(input1(:,i));
standard2(:,i)= (input2(:,i)- mean(input2(:,i)))/std(input2(:,i));
standard3(:,i)= (input3(:,i)- mean(input3(:,i)))/std(input3(:,i));
standard4(:,i)= (input4(:,i)- mean(input4(:,i)))/std(input4(:,i));
end

csvwrite('standardized_0.csv', standard0);
csvwrite('standardized_1.csv', standard1);
csvwrite('standardized_2.csv', standard2);
csvwrite('standardized_3.csv', standard3);
csvwrite('standardized_4.csv', standard4);