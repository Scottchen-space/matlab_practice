clc;
clear;
% sets = [1 0 1 1 1 0 0 1 1 0 0 1];
sets = input("輸入舉球紀錄(得分打1,失分打0\n");
target = 1;
sets = [0,(sets == target),0];

d = diff(sets);

start_idx = find(d==1);
end_idx = find(d==-1);

set_streak = end_idx-start_idx;
max_streak = max(set_streak);
disp(max_streak);