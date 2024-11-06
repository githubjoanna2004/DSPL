clc;
clear;
close;
clf;
x=[1 2 3 4];
h=[1 1 1 ];
xl=length(x);
hl=length(h);
zl=(xl+hl)-1;
xn=[x zeros(1,zl-xl)];
hn=[h zeros(1,zl-hl)];
xa=fft(xn);
ha=fft(hn);
ans=xa.*ha
anss=ifft(ans);
disp(anss);
answ=conv(x,h);
disp(answ);
