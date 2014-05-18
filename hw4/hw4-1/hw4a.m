Vi=20e-3;%Volts
L=1e-3;%Henry
C=.01e-6;%Farads
R=33;%Ohms
Rl=2;%Ohms

ws=1/(sqrt(L*C));
w=[0:10:2*ws]; % frequency (Rad/s)
ZC=1./(1i.*w.*C);
ZL=1i.*w.*L;

ZR=R+Rl;
ZT=ZR+ZL+ZC;
I=Vi./ZT;
Vo=I*R;
plot(w, abs(Vo));
hold on

R=100;%Ohms
ZR=R+Rl;
ZT=ZR+ZL+ZC;
I=Vi./ZT;
Vo=I*R;
plot(w, abs(Vo));
hold on

R=1000;%Ohms
ZR=R+Rl;
ZT=ZR+ZL+ZC;
I=Vi./ZT;
Vo=I*R;
plot(w, abs(Vo));
hold on


