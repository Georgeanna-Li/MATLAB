A=[6 2 1;2 3 1 ; 1 1 1];
u0=[1,;1;1];
u0max=max(u0);
u0min=min(u0);
if abs(u0max)>=abs(u0min)
    a=u0max;
else
    a=u0min;
end
y0=sign(a)*u0/abs(a);
u1=A*y0;
for i=1:3
    if(a==u0(i))
        r=i;
    end
end
k=0;
t1=sign(a)*u1(r);
lamda=t1;
fprintf('  k          u(k)_1             u(k)_2             u(k)_3             lamda\n')
fprintf('%2d  %12.9f  %12.9f  %12.9f   %12.9f\n',k,y0,lamda)
for k=1:10
    u0=u1;
    u0max=max(u0);
    u0min=min(u0);
    if abs(u0max)>=abs(u0min)
    a=u0max;
else
    a=u0min;
    end
y0=sign(a)*u0/abs(a);
u1=A*y0;
for i=1:3
    if(a==u0(i))
        r=i;
    end
end
u1=A*y0;
t1=sign(a)*u0(r);
lamda=t1;
x=y0;
fprintf('%2d  %12.9f  %12.9f  %12.9f   %12.9f\n',k,y0,lamda)
end

