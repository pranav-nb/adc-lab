clc;
am=input('Enter amplitude of message signal: ');
ac=input('Enter amplitude of carrier signal: ');
fm=input('Enter frequency of message signal: ');
fc=input('Enter frequency of carrier signal: ');
t=0:0.000001:0.001;

%plotting message signal
mt=am*cos(2*pi*fm*t);
subplot(3,1,1);
plot(t,mt);
title('Message signal');

%plotting carrier signal
ct=ac*cos(2*pi*fc*t);
subplot(3,1,2);
plot(t,ct);
title('Carrier signal');

%plotting AM signal
mi=am/ac;
st=(ac+mi*mt).*cos(2*pi*fc*t);
subplot(3,1,3);
plot(t,st);
title('Modulated signal');
