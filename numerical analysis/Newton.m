function [x,index,k] = Newton(fun,x,ep)
%牛顿迭代法解非线性方程f(x)=0
%输入fun=inline('[x^3-x-1,3*x^2-1]');
%第二行[x,index,k] = Newton(fun,1.5)
if nargin<4,ep=1e-6;end
index=0;k=1;
while k<500
   x1=x;f=feval(fun,x);
   x=x-f(1)/f(2);        %如果是重根的牛顿迭代，则m*f(1)/f(2);
                                 %另一种修改方法是令u=f(1)/f(2);x=x-f(1)*f(2)/(f(2)^2-f(1)*f(3))
   fprintf('It.no=%2d   x[%2d]=%12.9f\n',k,k,x)
   if abs(x-x1)<ep
       index=1;break;
   end
   k=k+1;
end
fprintf('the number is %2d\n  x=%12.9f\n',k,x);
