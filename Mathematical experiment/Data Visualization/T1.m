clear;  clc;

x = -pi:pi/100:pi;
y1 = x.^2;
y2 = sin(x);
plot(x,y1,'r-',x,y2,'b-.');
legend('y = x^2','y = sin(x)');
grid on
