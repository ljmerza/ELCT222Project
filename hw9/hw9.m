%variables
deltat=0.001; 
t=[-0.5:deltat:0.5]; 
Vt=t./abs(t); 
Vt(501)=0; 
f=1;

%number of times to sum series
N=10

Vfourier=0*Vt; 

%loop to sum series
for n=1:1:N 
intbn=(1/pi)*2*pi*f.*Vt.*sin(2*pi*n*f*t).*deltat; %
bn=sum(intbn); 
Vn=bn*sin(2*pi*f*n*t); 
Vfourier=Vfourier+Vn; 
end

%plot graph
plot (t, Vt, t, Vfourier)
