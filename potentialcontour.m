clc;
clear;
close all;

x = -3:0.1:3;
y = -3:0.1:3;

[xx, yy] = meshgrid(x,y);

V = x.*exp(-xx.^2 + -yy.^2);

surfc(V);
axis tight;
view(-30,45);

title('Magnetic Scalar Potential');

