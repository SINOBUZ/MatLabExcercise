clc;
clear all;
%memory initialization
alpha=1;
theta=0;
dt=0.02;
m=200;
v=1;
dx=1;
%declare variation
for i=1:m
    x(i)=i*dx;
end
%grid genetation
fileID=fopen('initial.dat','w');
for i=1:m
    if i==1
        C(i)=1.0;
        fprintf(fileID,'%f, %f \n',x(i),C(i));
    else
        C(i)=0.0;
       fprintf(fileID,'%f, %f \n',x(i),C(i));
    end
    C0(i)=C(i);
end
fclose(fileID);
%save initial condition
Pe = input("Input Pe:");
A1(i)=-theta*(1-(alpha/2)+(2/Pe))/dx; 
B1(i)=1/(v*dt)+theta(1-alpha+(2/Pe))/dx;
C1(i)=theta((alpha/2)-(1/Pe))/dx;
D1=(1-theta)*(1-(alpha/2)+(1/Pe))/dx;
E1=1/(v*dt)-(1-theta)*(1-alpha+(2/Pe))/dx;
F1=(1-theta)*(-(alpha/2)+(1/Pe))/dx;
rhs(i)=D1*C(i-1)+E1*C(i)+F1*C(i+1);
%definition of coefficients
nmax=2250;
for iter=1:nmax
    if iter==round(iter/100)*100
        fpritnf('%d\n',iter)
    end
    for i=2:m-1
        switch theta
            case 0 %explicit method
                C(i)=D1*C(i-1)+E1*C(i)+F1*C(i+1);
                C(i)=C(i)*dt;
        end
    end
C(1)=1;
C(m)=C(m-1);
end