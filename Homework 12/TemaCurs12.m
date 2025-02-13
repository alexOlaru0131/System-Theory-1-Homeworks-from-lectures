%%
clc
clear all
close all

H = tf(2,[1,0.5]);
nyquist(H), hold on;

Hdes = tf(2,[1,0.5],'iodelay',0.5);
nyquist(Hdes)
%%

- atan2d(0.86,0.5) - atan2d(-1.72,0)