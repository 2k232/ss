clc;
clear all;
close all;
xn=input('Enter the x(n) sequence');
j=sqrt(-1);
N=4;
xk=zeros(1,N);
for n=0:1:N-1
for k=0:1:N-1
xk(k+1)=xk(k+1)+xn(n+1)*exp(-j*2*pi*k*n/N);
end
end
disp('X(k)=');
disp(xk);
mag_xk=abs(xk);
disp('mag_xk=');
disp(mag_xk);
phase_xk=angle(xk);
disp('phase_xk=');
disp(phase_xk);
L=length(xn);
n=0:1:L-1;
subplot(2,2,1);
stem(n,xn);
xlabel('Time index');
ylabel('Amplitude');
title('Input x(n) sequence');
M=length(mag_xk);
n1=0:1:M-1;
subplot(2,2,2);
stem(n1,mag_xk);
xlabel('Time index');
ylabel('Amplitude');
title('Output mag_Xk sequence');
P=length(phase_xk);
n2=0:1:P-1;
subplot(2,2,3);
stem(n2,phase_xk);
xlabel('Time index');
ylabel('Amplitude');
title('Output phase_Xk sequence');
