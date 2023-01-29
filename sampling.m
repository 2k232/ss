clc;
clear all;
close all;
fd=input('Enter the frequency=');
t=0:0.00005:0.05;
xt=sin(2*pi*fd*t);
%fs>2w Over Sampling
fs=5*fd;
n=0:1/fs:0.05;
xn=sin(2*pi*fd*n);
subplot(3,1,1);
plot(t,xt,'b',n,xn,'r*-');
title('Over Sampling');
%fs1=2w Exact Sampling
fs1=2*fd;
n1=0:1/fs1:0.05;
xn1=sin(2*pi*fd*n1);
subplot(3,1,2);
plot(t,xt,'b',n1,xn1,'r*-');
title('Exact Sampling');
%fs<2w Under Sampling
fs2=1.5*fd;
n2=0:1/fs2:0.05;
xn2=sin(2*pi*fd*n2);
subplot(3,1,3);
plot(t,xt,'b',n2,xn2,'r*-');
title('Under Sampling');
