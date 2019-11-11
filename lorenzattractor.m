clear all
clc
int=[0 150];
x0=[0.5;0.5;0.5];
[t,x]=ode23(@lorenz_hw1,int,x0);
plot(t,x)
xlabel("Time (s)");
ylabel("states vs time");
grid on
figure
plot3(x(:,1),x(:,2),x(:,3))
xlabel("X1");
ylabel("X2");
zlabel("X3");
title("3D plot of X(1),X(2),X(3)")
grid on

function xdot=lorenz_hw1(t,x)
sigma=10;
r=28;
b=8/3;
xdot=[-sigma*(x(1)-x(2));
    r*x(1)-x(2)-x(1)*x(3);
    -b*x(3)+x(1)*x(2)];
