%% model

clc
clear all
close all

% Hdes = tf([2,1],[1,0,0]);

R1 = 5; R2 = 5;
C2 = 3e-6;
Hdes = tf([C2*(R1+R2),1],[R1*R2*C2,0,0]);

figure, rlocus(Hdes), hold on

C1_apr = 1/3.33e5;

k_nominal = 1/C1_apr;
k_tol = 0.1*k_nominal;
k_interval = k_nominal-k_tol : 1 : k_nominal+k_tol;


% rlocus(Hdes,k_interval)
rlocus(Hdes,k_interval,'x')