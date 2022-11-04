clc;clf;clear;
n=5;
a=zeros(n,n);
ap=zeros(n,1);
ae=zeros(n,1);
aw=zeros(n,1);
b=zeros(n,1);
r=zeros(n,1);
u=input("enter value of velocity:")
f=u*1; d=0.5;
pe = f/d
if pe<2
    for i=2:n-1
    ae(i)= -(d-f/2);
    aw(i)= -(d+f/2);
    ap(i)= -(ae(i)+aw(i));
    end
    aw(1)= -(2*d+f/2); ae(1)= -(d-f/2); ap(1)= -(ae(1)+aw(1));
    aw(n)= -(d+f/2); ae(n)= -(2*d-f/2); ap(n)= -(ae(n)+aw(n));
    for i=2:n
    a(i,i)=ap(i);
    a(i,i-1)=aw(i);
    a(i-1,i)=ae(i-1);
    end
else
    for i=2:n-1
    ae(i)= -(max(-f,0)+d);
    aw(i)= -(max(f,0)+d);
    ap(i)= -(ae(i)+aw(i));
    end

    aw(1)= -(max(f,0)+2*d); ae(1)= -(max(-f,0)+d); ap(1)= -(ae(1)+aw(1));
    aw(n)= -(max(f,0)+d); ae(n)= -(max(-f,0)+2*d); ap(n)= -(ae(n)+aw(n));
    for i=2:n
    a(i,i)=ap(i);
    a(i,i-1)=aw(i);
    a(i-1,i)=ae(i-1);
    end
end
a(1,1)=ap(1);
disp(a)
b(1)=-aw(1);
disp(b)

for i=1:n-1
    ae(i,1)=ae(i,1)/ap(i,1);
    b(i,1)=b(i,1)/ap(i,1);
    ap(i,1)=1;
    x=aw(i+1,1);
    aw(i+1,1)=0; 
    ap(i+1,1)=ap(i+1,1)-(x*ae(i,1));
    b(i+1,1)=b(i+1,1)-(x*b(i,1));
end
for i=n
    ae(i,1)=ae(i,1)/ap(i,1);
    b(i,1)=(b(i,1)/ap(i,1));
    ap(i,1)=1;
end
disp(b)
for i=2:n
    a(i,i)=ap(i);
    a(i,i-1)=-aw(i);
    a(i-1,i)=-ae(i-1);
end
a(1,1)=ap(1)
disp(a)
r(n,1)=b(n,1)/ap(n,1);
for i=n-1:-1:1
    r(i,1)=b(i,1)-(ae(i,1)*r(i+1,1))/ap(i,1);
end
disp(r)
