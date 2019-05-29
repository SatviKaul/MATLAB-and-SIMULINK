clc;
clear all;
close all;
fm=10;
fc=100;
t=0:0.001:0.4;
x=sin(2*pi*fm*t);
c=cos(2*pi*fc*t);

subplot(5,1,1);
plot(t,x);
title('Message Signal');

subplot(5,1,2);
plot(t,c);
title('Carrier Signal');

y=x.*c;
p=modulate(x,fm,fc,'am');
subplot(5,1,3);
plot(t,p);
title('Modulated Using Function');

subplot(5,1,4);
plot(t,y);
title('Modulated Using Multiply');

d=demod(p,fm,fc,'am');
subplot(5,1,5);
plot(t,d);
title('Demodulated Wave');