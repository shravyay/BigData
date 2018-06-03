clear all;
close all;
%   read csv file
csvsevere= csvread('csvsevere4.csv');
%   check for zeros along the column dimension and remove them
csvsevere(~any(csvsevere,2),:)=[];

%   create a new csv file without zeros
csvwrite('csvseverewithoutzeroes4.csv',csvsevere);

