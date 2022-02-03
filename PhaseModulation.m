am=input('Enter message signal amplitude: ');
ac=input('Enter carrier signal amplitude: ');
fm=input('Enter message signal frequency: ');
fc=input('Enter carrier signal frequency: ');
t=0:0.00001:1;

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

%plotting PM signal
st=ac*cos(2*pi*fc*t+pi*sin(2*pi*fm*t));
subplot(3,1,3);
plot(t,st);
title('PM Modulated signal');
ylabel('Amplitude');
xlabel('Time');
