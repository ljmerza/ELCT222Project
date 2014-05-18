%Part a
w=[0:10:2e7];
Vi=20; %volts
C=500e-12; %Farads
R=1e3; %Ohms
ZC=1./(1i.*w.*C);
ZR=R;
gain=ZC./(ZC+ZR);
Vo=Vi.*gain;
plot(w, abs(gain));