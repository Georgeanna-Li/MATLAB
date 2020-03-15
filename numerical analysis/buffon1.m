D = 1;
L = 0.6;
counter = 0;
n = 10000;
x = unifrnd(0, D/2, 1, n);%在0-D/2的范围内产生的随机数填到1*n的矩阵当中
phi = unifrnd(0, pi, 1, n);
axis([0,pi, 0,D/2]);
for i=1:n
    if x(i) < L*sin(phi(i))/2
        plot(phi(i), x(i), 'r.');
        counter = counter + 1;
        hold on;
    end 
end
fren = counter/n;
pihat = 2*L/(D*fren);