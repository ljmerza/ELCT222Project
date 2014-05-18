%Chapter 21 Problem 22
R=4.7e3;%Omhs
C=500e-12;%Farads

%part a - determine fc
fc=1/(2*pi*R*C)

%part b - find Av=Vo/Vi @ f=0.1fc
f=0.1*fc;
XC=1/(2*pi*f*C);
Av=XC/sqrt(R^2+XC^2)

%part c - find Av=Vo/Vi @ f=10fc
f=10*fc;
XC=1/(2*pi*f*C);
Av=XC/sqrt(R^2+XC^2)

%part d - find frequency with Vo=(1/100)Vi
Vo=(1/100)*Vi;
gain=Vo/Vi;
XC=R*((1-gain^2)/gain^2)^(-1/2);
f=1/(2*pi*C*XC)