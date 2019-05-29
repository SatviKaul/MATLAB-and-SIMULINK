clc;
clear all;
close all;
fm=10;
fc=100;
t=0:0.001:0.4;
x=sin(2*fm*pi*t);
c=cos(2*fc*pi*t);

subplot(5,1,2);
plot(t,c);
title('Carrier Waveform')

subplot(5,1,1);
plot(t,x);
title('Message Waveform');

y=x.*c;
p=modulate(x,fm,fc,'am');
subplot(5,1,3);
plot(t,p);
title('Modulated using Function');

subplot(5,1,4);
plot(t,y);
title('Modulated using multiply');