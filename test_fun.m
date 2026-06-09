clc;
clear;
% 測試一：有傳入 B0
B1 = calc_dipole_B(2, 0, 3e-5);
% 預期 B1 = 3.7500e-06

% 測試二：未傳入 B0 (使用 nargin 判斷)
L_array = [2, 4];
theta_array = [0, pi/6]; % pi/6 為 30度
B2 = calc_dipole_B(L_array, theta_array);
% 預期 B2 應該是與 L_array 大小相同的陣列，並使用預設 B0 計算