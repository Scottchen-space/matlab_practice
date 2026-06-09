clc;
clear;
close all;

t = linspace(0,100,51);

T_panel = 20*sin(0.1.*t) + 10;
T_pcb = 10*cos(0.05.*t) + 15;


plot(t,T_panel,'LineStyle','--','Marker','*','Color','r');
hold on;
plot(t,T_pcb,'LineStyle','-','Marker','o','Color','b');
xlabel('Time (minutes)');
ylabel('Temperature (C)');
legend('Solar Panel','PCB');
grid on;