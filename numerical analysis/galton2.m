%GALTON2
%1000次实验，七层钉板
K=1000;  %控制实验的次数
n=zeros(1,7);  % 矩阵n为1*5的矩阵初值为0
delay=0.0001;  %设置delay变量等于0.0001
clf;  %清除当前窗口的图案
axis([-8 8 -15 0]);  %设置x范围-4到4 y范围-7到0
aa=sqrt(3)/2;  %aa=（根号3）/2
bb=1/2;  %bb= 1/2
dd=3/2;  %d= 3/2
a=0.9*aa;  %a= 0.9 * aa
b=0.9*bb;  %b= 0.9 * bb
xxx=[-3*sqrt(3),-2*sqrt(3),-1*sqrt(3),0,1*sqrt(3),2*sqrt(3),3*sqrt(3)]; % 设定柱形图横坐标
xx=[0,-aa,aa,-2*aa,0,2*aa,-3*aa,-aa,aa,3*aa,-4*aa,-2*aa,0,2*aa,4*aa,-5*aa,-3*aa,-aa,aa,3*aa,5*aa];  % 每个六边形顶点的坐标
yy=[0,-dd,-dd,-2*dd,-2*dd,-2*dd,-3*dd,-3*dd,-3*dd,-3*dd,-4*dd,-4*dd,-4*dd,-4*dd,-4*dd,-5*dd,-5*dd,-5*dd,-5*dd,-5*dd,-5*dd];  % 每个六边形顶点的坐标
for k=1:K  %循环K次
   figure(1);
   clf  %清除当前窗口的图案
   r=round(rand(1,6));  %round函数四舍五入取整 rand函数生成一个1行4列的随机数
   x0=0;y0=0;    %
   for i=1:21  % i 循环 从1 到 10,10个六边形
      x=xx(i);  % x等于每一个六边形的顶端
      y=yy(i)-0.1;  %y等于每一个六边形的顶端
      X=[x,x-a,x-a,x,x+a,x+a];  % 标出六边形的六个点的坐标
      Y=[y,y-b,y-b-0.9,y-1.8,y-b-0.9,y-b];  % 标出六边形的六个点的坐标
      fill(X,Y,'D');hold on;  %用蓝色把XY中的部分填充
   end  
   n(sum(r)+1)=n(sum(r)+1)+1;  %
   plot(x0,y0,'ro');  %画（0，0）的红圈圈
   for j=1:6  % j 循环 从1到4
      if r(j)==0  %如果r矩阵中的第j个元素为0
         x0=x0-aa;y0=y0-bb;  % 球往左移动
         plot(x0,y0,'ro');hold on;  %画红圈圈，红圈圈暂时保留，暂停0.0001s
         y0=y0-1;  %y0往下一单位距离，即往下走的圈圈
         plot(x0,y0,'ro');hold on;  %画红圈圈，红圈圈暂时保留，暂停0.0001s
      else  %如果r矩阵中的第j个元素为1
         x0=x0+aa;y0=y0-bb;  % 球往右移动
         plot(x0,y0,'ro');hold on;  %画红圈圈，红圈圈暂时保留，暂停0.0001s
         y0=y0-1;  %y0往下一单位距离，即往下走的圈圈
         plot(x0,y0,'ro');hold on;  %画红圈圈，红圈圈暂时保留，暂停0.0001s
      end  
   end  
   for m=1:7  % m 循环 从1到5
      text((m-4)*sqrt(3),-9.5,num2str(n(m)));  % 最底端的位置显示字符串（掉落球的实时结果）
   end
   figure(2);
   bar(xxx,n); % 柱形图
   figure(1);  
   pause(1*delay);  %暂停 初始时间0.0001s
end  
