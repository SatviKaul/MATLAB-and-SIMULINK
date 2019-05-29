n1=input('Enter the length =');
n2=input('Enter the length =');
n3=input('Enter the length =');
t=0:0.1:n1;
t1=n1:0.01:n2;
t2=n2:0.01:n3;
x=sin(2*pi*t);
y=sin(4*pi*t1);
z=sin(6*pi*t2);

subplot(4,1,1);
plot(t,x,'g');
title('User 1');
grid on;

subplot(4,1,2);
plot(t1,y,'r');
title('User 2');
grid on;

subplot(4,1,3);
plot(t2,z,'m');
title('User 3');
grid on;

subplot(4,1,4);
plot(t,x,'g',t1,y,'r',t2,z,'m');
title('Time Division Multiplexing');
grid on;
title('User 1');
