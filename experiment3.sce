clc;
clear;
clf;
close ;
x=input('Enter input:');
x_ind=input('Enter index of x:');
h =input('Enter impulse response:');
h_ind=input('Enter index of h:');
y=conv(x,h);
y_ind=min(x_ind)+min(h_ind):max(x_ind)+max(h_ind);
disp(y);
plot2d3(y_ind,y,-9);
 xlabel("Time index");
ylabel("Amplitude");
title("Linear convolution");
