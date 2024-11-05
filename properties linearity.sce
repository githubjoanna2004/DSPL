//Properties of DFT
clc;
clear;
close;
clf;

//linearity
x1=[1 2 3 4];
x2=[2 1 2 1];
a1=2;
a2=3;
x1k=fft(x1);
x2k=fft(x2);
lhs=(a1*x1)+(a2*x2);
lhsk=fft(lhs);
disp('LHS=');

disp(lhsk);
rhsk=(a1*x1k)+(a2*x2k);
disp("RHS=");
disp(rhsk);
