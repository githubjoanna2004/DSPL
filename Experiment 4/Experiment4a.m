%Circular convolution using concentric circle method
clc;
close all;
clear all;
x=input("Enter first sequence");
x=x(:,end:-1:1);
h=input("Enter second sequence");
y=[1,max(length(x), length(h))];
for i=1:length(x)
x=[x(end) x(1:end-1)];
y(i)=sum(x.*h);
end
disp("Convolution product y:");
disp(y);
stem(y,'filled');
xlabel('n');
ylabel('y(n)');
title('circular convolution result');