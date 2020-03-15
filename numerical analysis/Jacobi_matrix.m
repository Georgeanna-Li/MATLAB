function x=Jacobi(A,b,x0,eps)
D=diag(diag(A));
D=inv(D);
L=tril(A,-1);
U=triu(A,1);
B=-D*(L+U);
f=D*b;
k=0;
x0=x0;
x=B*x0+f;
fprintf('k     x1_(k)     x2_(k)     x3_(k)\n')
fprintf('%2d   %6.0f    %6.0f    %6.0f\n',k,x0)
while norm(x-x0)>=eps
    x0=x;
    x=B*x0+f;
    k=k+1;
    fprintf('%2d   %6.0f   %6.0f   %6.0f\n',k,x0)
end
