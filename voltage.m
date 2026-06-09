clc;
clear;

voltage_data = [
    3.3,  25;
   -0.1,  40;   % 電壓異常 (無效)
    3.2,  15;
    3.3,  85;   % 溫度異常 (無效)
    3.1,  20
];



V_invalid = find(voltage_data(:,1)<0);
T_invalid = find(voltage_data(:,2)<=-40 | voltage_data(:,2)>=80);
invalid = [V_invalid, T_invalid];
voltage_data(invalid,:) = [];



avg_result = [mean(voltage_data(:,1)),mean(voltage_data(:,2))];

disp(avg_result);



