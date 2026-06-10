clc;
clear;
close all;

x = -3:0.1:3;
y = -3:0.1:3;

[xx, yy] = meshgrid(x,y);

V = xx.*exp(-xx.^2-yy.^2);

surfc(xx,yy,V);
axis tight;
view(-30,45);

title('Magnetic Scalar Potential');

