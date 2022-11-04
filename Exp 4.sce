clc; clear; clf;
n=10;
a = zeros(n,1);
b = zeros(n,1);
c = zeros(n,1);
d = zeros(n,1);
T = zeros(n,1);
c(1)=0;c(n)=1;
b(n)=0;b(1)=1;
a(n)=2;a(1)=2;
d(n)=1;d(1)=1;
for i=2:1:n-1
    a(i)=2;b(i)=1;c(i)=1;d(i)=1;
end
p = zeros(n,1);
q = zeros(n,1);
for i=1:1:n
    if i==1
        p(i)=b(i)/a(i);
        q(i)=d(i)/a(i);
    else
        p(i)=b(i)/(a(i)-(c(i)*p(i-1)));
        q(i)=((c(i)*q(i-1))+d(i))/(a(i)-(c(i)*p(i-1)));
    end
end
for i=n:-1:1
    if i==n
        T(i)=q(i);
    else
        T(i)=p(i)*T(i+1)+q(i);
    end
end
disp('T: '); disp(T);
disp('b: '); disp(b);
disp('a: '); disp(a);
disp('p: '); disp(p);
disp('q: '); disp(q);
disp('c: '); disp(c);
disp('d: '); disp(d);
plot(T,'linewidth',5);
