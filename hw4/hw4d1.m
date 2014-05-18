%Chapter 22 Problem 29

Vi=1;

Rl=12;
L=4.7e-3;
C=560e-12;
R=0.16e3;

%part a - determine fs
fs=1/(2*pi*sqrt(L*C))

%part b - calc Qs and BW for Vo
XL=2*pi*fs*L;
Qs=XL/(Rl+R)
BW=fs/Qs

%part c -sketch Av with f=1e3-1e6
f=[0:100:2*fs];
ZC=1./(1i*2*pi*f*C);
ZL=1i*2*pi*f*L;
ZR=R+Rl;
ZT=ZC+ZL+R;
Av=R./ZT;

plot(f,abs(Av));