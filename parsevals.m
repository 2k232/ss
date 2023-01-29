clc;
clear all;
close all;
xn=input('Enter the x(n) sequence');
LHS=sum(xn.^2);
Xk=fft(xn);
RHS=(1/4)*sum(abs(Xk.^2));
if(LHS==RHS)
disp('Parsevals theorem is proved');
disp('LHS=');
disp(LHS);
disp('RHS=');
disp(RHS);
else
disp('Parsevaos theorem is not proved');
end
L=length(xn);
n1=0:1:L-1;
subplot(2,2,1);
stem(n1,xn);
xlabel('Time index');
ylabel('Amplitude');
title('Input x(n) sequence');
M=length(LHS);
n2=0:1:M-1;
subplot(2,2,3);
stem(n2,LHS);
xlabel('Time index');
ylabel('Amplitude');
title('LHS sequence');
P=length(RHS);
n3=0:1:P-1;
subplot(2,2,4);
stem(n3,RHS);
xlabel('Time index');
ylabel('Amplitude');
title('RHS sequence');
