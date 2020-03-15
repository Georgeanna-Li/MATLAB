function x=GaussSidel(A,b,x0)
D=diag(diag(A));
L=tril(A,-1);
C=inv(D+L);
U=triu(A,1);
B=-C*U;
f=C*b;
i=0;
x0=x0;
x=B*x0+f;
fprintf('k   x1_(k)   x2_(k)   x3_(k)\n')
fprintf('%2d   %10.6f    %10.6f    %10.6f\n',i,x0)
for i=1:18
    x0=x;
    x=B*x0+f;
    fprintf('%2d   %10.6f   %10.6f   %10.6f\n',i,x)
end