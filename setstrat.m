clc;
clear;

pass_quality = [3, 2, 1, 3];

for i = 1:length(pass_quality)
    if pass_quality(i) == 1
        disp('Dump');
    elseif pass_quality(i) == 2
        disp('Outside');
    elseif pass_quality(i) == 3
        disp('Aquick');
    end
end