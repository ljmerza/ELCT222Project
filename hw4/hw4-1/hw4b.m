Vi=20e-3;%Volts
L=1e-3;%Henry
C=.01e-6;%Farads
R=33;%Ohms
Rl=2;%Ohms

fs=1/(2*pi*sqrt(L*C));
w=fs*2*pi;

XL=w*L; 
ZR=R+Rl;

Qs=XL/ZR %Q factor
BW=fs/Qs %Bandwidth

R=100;
ZR=R+Rl;
Qs=XL/ZR %Q factor
BW=fs/Qs %Bandwidth

R=1000;
ZR=R+Rl;
Qs=XL/ZR %Q factor
BW=fs/Qs %Bandwidth