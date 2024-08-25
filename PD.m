function dx=PD(t,x)
% Se definen los valores y parametros
m1=0.2;
m2=0.1;
l1=0.3;
l2=0.25;
g=9.81;
c1=0.2;

dx=zeros(4,1);
Dx = x(2)-x(1);
% Definicion de la funcion en espacios de estados
dx(1)= x(3);
dx(2)= x(4);
dx(3)= (1/((m1+m2)*l1-m2*l1*(cos(Dx)^2)))*(m2*l2*(x(4)^2)*sin(Dx)-(m1+m2)*g*sin(x(1))-c1*x(3)+m2*g*sin(x(2))*cos(Dx)+m2*l1*(x(3)^2)*cos(Dx)*sin(Dx));
dx(4)= (1/(l2-((m2*l2*(cos(Dx)^2))/(m1+m2))))*(-l1*(x(3)^2)*sin(Dx)-g*sin(x(2))-((m2*l2*(x(4)^2)*sin(Dx)*cos(Dx))/(m1+m2))+g*sin(x(1))*cos(Dx)+((cos(Dx)*c1*x(3))/(m1+m2)));