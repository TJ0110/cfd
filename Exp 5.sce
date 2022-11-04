clc;clf;clear;
n=5;
a=zeros(n,n);
b=zeros(n,1);
p=zeros(n,1);
u=zeros(n,1);
l=zeros(n,1);
d=zeros(n,1);
for i=1:n
    u(i,1)=-0.45;
end
for i=1:n
    l(i,1)=-0.55;
end
for i=2:n-1
    d(i,1)=1;
end
d(1,1)=1.5;d(n,1)=1.5;
/*for i=2:n-1
    a(i,i)=d(i,1);
    a(i,i+1)=u(i,1);
    a(i+1,i)=l(i,1);
    a(i,i-1)=l(i,1);
end
a(1,1)=d(1,1);a(1,2)=u(1,1);a(5,4)=l(1,1);a(5,5)=d(n,n);
disp("Matrix: a");
disp(a);*/
for i=2:n
    b(i,1)=0;
end
b(1,1)=1.05;
disp("Matrix: b");
disp(b);
disp("Matrix: u");
disp(u);
disp("Matrix: l");
disp(l);
disp("Matrix: d");
disp(d);
for i=1:n-1
    u(i,1)=u(i,1)/d(i,1);
    b(i,1)=b(i,1)/d(i,1);
    d(i,1)=1;
    x=l(i+1,1);
    l(i+1,1)=0; 
    d(i+1,1)=d(i+1,1)-(x*u(i,1));
    b(i+1,1)=b(i+1,1)-(x*b(i,1));
end
disp("Matrix: b");
disp(b);
disp("Matrix: u");
disp(u);
disp("Matrix: l");
disp(l);
for i=n
    u(i,1)=u(i,1)/d(i,1);
    b(i,1)=b(i,1)/d(i,1);
    d(i,1)=1;
end
for i=2:n-1
    a(i,i)=d(i,1);
    a(i,i+1)=u(i,1);
    a(i+1,i)=l(i,1);
    a(i,i-1)=l(i,1);
end
a(1,1)=d(1,1);a(1,2)=u(1,1);a(5,4)=l(n,1);a(5,5)=d(n,1);
disp("Matrix: a");
disp(a);
disp("Matrix: d");
disp(d);
p(n,1)=b(n,1)/d(n,1);
for i=n-1:-1:1
    p(i,1)=(b(i,1)-(u(i,1)*p(i+1,1)))/d(i,1);
end
disp("Matrix: p");
disp(p);
