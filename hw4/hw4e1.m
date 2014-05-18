%Chapter 21 Problem 30

R=3.3e3;
Rl=16;
L=1e-3;
C=0.001e-6;

%part a - determine Av for frequency range of 100hz-1Mhz
f=[100:10:1e6];
ZC=1./(1i*2*pi*f*C);
ZL=1i*2*pi*f*C;
ZR=R+Rl;
ZT=ZC+ZL+ZR;

Av=R./ZT;
plot(f, abs(Av));5