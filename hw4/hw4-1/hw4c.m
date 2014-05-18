Vi=20e-3;%Volts
L=1e-3;%Henry
C=.01e-6;%Farads
R=13;%Ohms
Rl=2;%Ohms

ws=1/(sqrt(L*C));
w=[0:1000:2*ws]; % frequency (Rad/s)

ZC=1./(1i.*w.*C);
ZL=1i.*w.*L;
ZR=R+Rl;
ZT=ZR+ZL+ZC;
I=Vi./ZT;
Vo=I*R;
gain=Vo/Vi;

f=w/(2*pi);
plot(f, angle(gain));
hold on
plot(f,angle(Vo));
hold on