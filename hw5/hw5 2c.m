E=40;
R=4.7e3;
C=4.7e-6;
Vi=6;
tao=R*C;
time=[0:.01:5*tao];

v=E+(E+Vi)e^(-time/tao));
i=(E/R)*e^(-time/tao);

plot(time,v);
hold on
plot(time,i);
hold on