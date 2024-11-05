clc; 
clear; 
close;
clf; 
x=[1 2 3 4]; 
h=[1 1 1]; 
y=conv(x,h); 
z=max(length(x),length(h)); 
r= [y(1:z)]; 
new = [y(z+1:length(y)) zeros(1,length(y)-z)] ; 
for k=1:z-1; 
    r(k)=r(k)+new(k); 
end 
disp(r); 
