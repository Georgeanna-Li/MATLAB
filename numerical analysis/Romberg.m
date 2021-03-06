function t=Romberg(fname,a,b,e)
%Romberg 法求积分
%fname 是被积函数，a是上限，b是下限，e为精度
if nargin<4,e=1e-5;
end
i=1;j=1;h=b-a;
T(i,1)=h/2*(feval(fname,a)+feval(fname,b));
T(i+1,1)=T(i,1)/2+sum(feval(fname,a+h/2:h:b-h/2+0.001*h))*h/2;
T(i+1,j+1)=4^j*T(i+1,j)/(4^j-1)-T(i,j)/(4^j-1);
while abs(T(i+1,i+1)-T(i,i))>e
    i=i+1;h=h/2;
    T(i+1,1)=T(i,1)/2+sum(feval(fname,a+h/2:h:b-h/2+0.001*h))*h/2;
    for j=1:i
        T(i+1,j+1)=4^j*T(i+1,j)/(4^j-1)-T(i,j)/(4^j-1);
    end
end
T
t=T(i+1,j+1)