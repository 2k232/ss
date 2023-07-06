clc 
close all 
clear all 
t = 0:0.0001:20; 
c=input ('Enter Bit Depth of PCM Coding:'); 
part = -1:0.1:1; 
codebook = -1:0.1:1.1; 
msg = cos(t); 
[~,quants] = quantiz(msg,part,codebook); 
subplot(3,1,1); 
plot(t,msg); 
title('Message Signal'); 
subplot(3,1,2); 
plot(t,quants); 
title('Quantized Signal'); 
y = uencode(quants,c); 
ybin=dec2bin(y,c); 
subplot(3,1,3); 
plot(t,y); 
title('PCM PLOT');
