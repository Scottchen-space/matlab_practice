clc;
clear;

power_delta = [-40, -30, -20, 15, -50];
% >0 充電 <0 放電 

power_state = 100;

for i = 1:length(power_delta)
    power_state = power_state + power_delta(i);
    if power_state > 100
        power_state = 100;
    elseif power_state < 20
        disp('Warning: Safe Mode Triggered!');
        break;
    end
end

final_power = power_state;
disp(final_power);
 