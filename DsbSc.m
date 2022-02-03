clc;
close all;
Am=input('Enter message signal amplitude: ');
Ac=input('Enter carrier signal amplitude: ');
Fm=input('Enter message signal frequency: ');
Fc=input('Enter carrier signal frequency: ');
t = 0:0.000001:0.001;
%modulating signal
mt=Am*cos(2*pi*Fm*t);
%carrier signal
ct=Ac*cos(2*pi*Fc*t);
%DSB-SC signal
s=mt.*ct;
subplot(4,1,1);
plot(t,mt) ;
title('Modulating Signal') ;
ylabel('amplitude')
xlabel('time')
subplot(4,1,2);
plot(t,ct) ;
title('Carrier signal');
ylabel('amplitude')
xlabel('time')
subplot(4,1,3);
plot(t,s);
title('DSB-SC wave') ;
ylabel('amplitude')
xlabel('time')
y1=fft(s);
subplot(4,1,4)
plot(t,y1);
