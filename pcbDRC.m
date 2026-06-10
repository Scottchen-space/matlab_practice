clc;
clear;

clearance_map = [
    0.20, 0.25, 0.30;
    0.18, 0.12, 0.22;
    0.14, 0.35, 0.40;
    0.11, 0.49, 0.30
];

[x,y] = size(clearance_map);

error_data = zeros(x*y,3);
errorCount = 0;

for i = 1:x
    for j = 1:y
        if clearance_map(i,j) < 0.15
            errorCount = errorCount + 1;
            error = [[i,j], clearance_map(i,j)];
            error_data(errorCount, :) = error; 
        end
    end
end

error_data = error_data(1:errorCount, :);

% Display 
for i = 1:errorCount
    fprintf('DRC error at (%d,%d) : %f\n',error_data(i,1),error_data(i,2),error_data(i,3));
end
fprintf('error count : %d\n', errorCount);







