addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\equalization_image files\csv files without zeroes'
input0= csvread('csvgoodwithoutzeroes0.csv');
minData0= min(input(:));
maxData0= max(input(:));
normal0= (input0-minData0)/(maxData0-minData0);
csvwrite('normalized_0.csv',normal0);

input1= csvread('csvseverewithoutzeroes1.csv');
minData1= min(input1(:));
maxData1= max(input1(:));
normal1= (input1-minData1)/(maxData1-minData1);
csvwrite('normalized_1.csv',normal1);

input2= csvread('csvseverewithoutzeroes2.csv');
minData2= min(input2(:));
maxData2= max(input2(:));
normal2= (input2-minData2)/(maxData2-minData2);
csvwrite('normalized_2.csv',normal2);

input3= csvread('csvseverewithoutzeroes3.csv');
minData3= min(input3(:));
maxData3= max(input3(:));
normal3= (input3-minData3)/(maxData3-minData3);
csvwrite('normalized_3.csv',normal3);

input4= csvread('csvseverewithoutzeroes4.csv');
minData4= min(input4(:));
maxData4= max(input4(:));
normal4= (input4-minData4)/(maxData4-minData4);
csvwrite('normalized_4.csv',normal4);