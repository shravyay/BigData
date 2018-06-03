addpath 'C:\Users\shrav\OneDrive\Documents\MATLAB'
addpath 'C:\Users\shrav\OneDrive\Documents\4th semester\project\figures'
input= imread('4_eq.png');
% imtool(input);
pos   = [301 208;495 576;395 412;520 312;448 579;248 249;478 300;712 634];
color = 'black';
mark = insertMarker(input,pos,'o','color',color,'size',10);
imshow(mark);
% M = imfreehand(gca,'Closed',0);