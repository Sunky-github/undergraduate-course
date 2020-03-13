clear;  clc;

n = 100;
m = 100;
x = 0:pi/m:4*pi;
u = sin(x);
y = zeros(1,4*m+1);
for k = 1:n
    y = y + 1/n * u .* (1 - (k/n)^2 * u.^2).^1.5;
end
plot(x,y,'b-');
