clear;clf;clc;
xi=0;xf=1;
hx=0.1;
x=xi:hx:xf;
n=(xf-xi)/hx;
ti=0,ht=0.001;
nt=20;
tf=ti+ht*nt;
t=ti:ht:tf;
r=ht/(hx*hx);
u(1,1)=0;
u(n+1,1)=0;
for i=2:n
    u(i,1)=sin(%pi*x(i));
end
b=zeros(n-1,n-1);
for i=1:n-2
    b(i,i)=1-2*r;
    b(i+1,i)=r;
    b(i,i+1)=r;
end
b(n-1,n-1)=1-2*r;
disp("Matrix: ");
disp(b);
for j=1:nt
    u(2:n,j+1)=((b)*(u(2:n,j)));
end
disp('u: ');
disp(u);
plot(x',u,'d-','linewidth',5);
