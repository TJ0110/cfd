clc;clear;clf;
xi=0;xf=%pi/2;
n=6;
y(1)=1;
y(n+1)=1;
h=(xf-xi)/n;
p=(h*h-2);
x=xi:h:xf;
a=zeros(n-1,n-1);
b=zeros(n-1,1);
b(1)=-y(1);
b(n-1)=-y(n+1);
for i=1:n-2
    a(i,i)=p;
    a(i,i+1)=1;
    a(i+1,i)=1;
end
a(n-1,n-1)=p;
disp('Matrix a:'); 
disp(a);
disp('Matrix b:'); 
disp(b);
y(2:n,1)=inv(a)*b;
disp("x   y");
disp([x',y]);
plot(x,y,'linewidth',4);
