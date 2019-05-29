clc;
clear all;
close all;
fm=2;
fc=10;
fs=50*fc;
t=0:0.001:4;
Am=1;
Ac=1;
x=Am*sin(2*pi*fm*t);
c=Ac*cos(2*pi*fc*t);
y=modulate(x,fc,fs,'fm');
d=demod(y,fc,fs,'fm');

subplot(4,1,1);
plot(t,x);
ylabel('m(t)');
xlabel('Time(sec)');
title('Message Signal');

subplot(4,1,2);
plot(t,c);
ylabel('c(t)');
xlabel('Time(sec)');
title('Carrier Signal');

subplot(4,1,3);
plot(t,y);
ylabel('mod(t)');
xlabel('Time(sec)');
title('Modulated Signal');

subplot(4,1,4);
plot(t,d);
ylabel('demod(t)');
xlabel('Time(sec)');
title('Demodulated Signal');