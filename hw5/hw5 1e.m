time=[0:.01:2];
E=20;
R=4.7e3;
C=56e-6;
tao=R*C;

v=E*(1-e^(-time/tao));
i=(E/R)*e^(-time/tao);

plot(time,v);
hold on
plot(time,i);
hold on