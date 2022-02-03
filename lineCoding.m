bits=input('Enter the bits: ');
bitrate=input('Enter the bitrate: ');
%Unipolar NRZ
[t,s]=unrz(bits,bitrate);
subplot(4,1,1)
plot(t,s,'LineWidth',3);
axis([0 t(end) -0.1 1.1])
grid on;
title('Unipolar NRZ');
%Unipolar RZ
[t,s]=urz(bits,bitrate);
subplot(4,1,2)
plot(t,s,'LineWidth',3);
axis([0 t(end) -0.1 1.1])
grid on;
title('Unipolar RZ');
%Polar RZ
[t,s]=prz(bits,bitrate);
subplot(4,1,3)
plot(t,s,'LineWidth',3);
axis([0 t(end) -0.1 1.1])
grid on;
title('Polar RZ');
%Manchester
[t,s]=manchester(bits,bitrate);
subplot(4,1,4)
plot(t,s,'LineWidth',3);
axis([0 t(end) -0.1 1.1])
grid on;
title('Manchester');