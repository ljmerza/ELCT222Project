w=[0:10:2e7];

Vi=20; %Voltage in volts
C=500e-12; %capacitance in Farads
R=1e3; %Resistance in Ohms

ZC=1./(1i.*w.*C);
ZR=R;

gain=ZC./(ZC+ZR);
degrees=(180/pi)*angle(gain)

plot(w, degrees);