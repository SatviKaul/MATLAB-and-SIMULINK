clc;
clear all;
close all;
fm=10;
fc=150;
fs=50*fc;
t=0:0.0001:4/fm;
Am=1;
Ac=1;
x=Am*sin(2*pi*fm*t);
c=Ac*cos(2*pi*fc*t);
y=modulate(x,fc,fs,'amssb');
d=demod(y,fc,fs,'amssb');

subplot(5,1,1);
plot(t,x);
title('Message Signal');

subplot(5,1,2);
plot(t,c);
title('Carrier Signal');

subplot(5,1,3);
plot(t,y);
title('SSB AM Signal');

subplot(5,1,4);
plot(t,d);
title('Demodulated Signal');