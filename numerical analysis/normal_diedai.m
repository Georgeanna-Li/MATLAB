eps=1e-6;dx=1;x0=2;k=0;
fprintf('no.=%2d   x[%2d]=%10.6f',k,k,x0')
while(dx>eps)
    k=k+1;
    x=(x-1/2*(3^(1/2))*(x^2-3));
    dx=abs(x-x0);
    fprintf('   no.=%2d   x[%2d]=%10.6f',k,k,x)
    if mod(k+1,3)==0,fprintf('\n'),end
    x0=x;
end
fprintf('\n 满足精度要求的迭代次数k=%2d',k)
x