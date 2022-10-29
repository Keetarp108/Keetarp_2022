clc;
clear all;
close all;

Ac=2; 
fc=0.6; 
Am=.9; 
fm=.4; 
Fs=200; 

ka=1;

t=[0:0.1:50];
ct=Ac*cos(2*pi*fc*t); 
mt=Am*cos(2*pi*fm*t); 
AM=ct.*(1+ka*mt); 

subplot(3,1,1);
plot(mt);
ylabel('Message signal');

subplot(3,1,2); 
plot(ct);
ylabel('carrier');

subplot(3,1,3);
plot(AM);
ylabel('AM signal');
