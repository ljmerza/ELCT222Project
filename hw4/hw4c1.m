%Chapter 22 Problem 25

fc=2e3;%cut off frequency
C=0.1e-6;%Farads
R=1/(2*pi*fc*C)

Rnew=800; %Ohms = nearest commercial resistor
fcnew=1/(2*pi*R*C)

f=[0.01*fc:10:10*fc];
XC=1./(1i*2*pi*f*C);
Av=1./sqrt((R./XC).^2+1);
plot(f,abs(Av));
