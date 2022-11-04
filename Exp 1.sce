clear;clc;clf;
function yP=f(t,y)
    yP=t-y
endfunction
t0=0;
y0=1;
t=0:0.1:5;
y=ode(y0,t0,t,f);
plot(t,y,'linewidth',5);
