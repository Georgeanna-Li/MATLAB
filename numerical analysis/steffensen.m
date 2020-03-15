x0=1.5;i=2;
f=inline('(1/(x-1)^(1/2))');
y=f(x0);
z=f(y);
x1=x0-(y-z)^2/(z-2*y+x0);
while abs(x1-x0)>=1e-5
    x0=x1;
    y=f(x0);
    z=f(y);
    x1=x0-(y-z)^2/(z-2*y+x0);
    i=i+1;
    s.result(i)=x1;
end
s.step=[(0:i-1)]';
fprintf('The number of steps:\t%d\n',i-1);
for j=1:i
    fprintf('%10d',s.step(j));fprintf('\t');
    fprintf('%10.7f\n',s.result(j));
end
