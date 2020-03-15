f(x)=2*x^2;
function f=XianqieMethod(x0,x1)
x0=2;x1=1.9;       %赋予初值（x0,x1）
x2=x1-(fun(x1)*(x1-x0))/(fun(x1)-fun(x0));
eps=1e-6;
n=0;
fprintf('迭代次数   x_n             feval(x_n)\n')
fprintf('n=%3.0f   x_%d=%10.5f   %10.6e\n',n,n,x0,fun(x0))
while abs(x1-x0)>eps
    x0=x1;x1=x2;
    x2=x1-fun(x1)*(x1-x0)/(fun(x1)-fun(x0));
    n=n+1;
    fprintf('n=%3.0f    x_%d=%10.5f   %10.6e\n',n,n,x0,fun(x0))
end
fprintf('\n迭代次数n=%3.0f   x*=%10.9f',n,x0)
function f
