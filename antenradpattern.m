clc;
clear;
close all;

x = -8:0.5:8;
y = -8:0.5:8;

[xx, yy] = meshgrid(x,y);

R = sqrt(xx.^2+yy.^2);
R = R + eps;

Z = sin(R)./R;

surf(xx,yy,Z);
colormap("jet");
colorbar;
