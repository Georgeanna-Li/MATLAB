%GALTON1
%10��ʵ�飬�Ĳ㶤��
K=1000;  %����ʵ��Ĵ���
n=zeros(1,5);  % ����nΪ1*5�ľ����ֵΪ0
delay=0.0001;  %����delay��������0.03
clf;  %�����ǰ���ڵ�ͼ��
axis([-4 4 -7 0]);  %����x��Χ-4��4 y��Χ-7��0
aa=sqrt(3)/2;  %aa=������3��/2
bb=1/2;  %bb= 1/2
dd=3/2;  %d= 3/2
a=0.9*aa;  %a= 0.9 * aa
b=0.9*bb;  %b= 0.9 * bb
xx=[0,-aa,aa,-2*aa,0,2*aa,-3*aa,-aa,aa,3*aa];  % ÿ�������ζ��������
yy=[0,-dd,-dd,-2*dd,-2*dd,-2*dd,-3*dd,-3*dd,-3*dd,-3*dd];  % ÿ�������ζ��������
for k=1:K  %ѭ��K��
   clf  %�����ǰ���ڵ�ͼ��
   r=round(rand(1,4));  %round������������ȡ�� rand��������һ��1��4�е������
   x0=0;y0=0;    %
   for i=1:10  % i ѭ�� ��1 �� 10,10��������
      x=xx(i);  % x����ÿһ�������εĶ���
      y=yy(i)-0.1;  %y����ÿһ�������εĶ���
      X=[x,x-a,x-a,x,x+a,x+a];  % ��������ε������������
      Y=[y,y-b,y-b-0.9,y-1.8,y-b-0.9,y-b];  % ��������ε������������
      fill(X,Y,'d');hold on;  %����ɫ��XY�еĲ������
   end  
   n(sum(r)+1)=n(sum(r)+1)+1;  %�ݽ�
   plot(x0,y0,'ro');  %����0��0���ĺ�ȦȦ
   for j=1:4  % j ѭ�� ��1��4
      if r(j)==0  %���r�����еĵ�j��Ԫ��Ϊ0
         x0=x0-aa;y0=y0-bb;  % �������ƶ�
         plot(x0,y0,'ro');hold on;pause(delay);  %����ȦȦ����ȦȦ��ʱ��������ͣ0.03s
         y0=y0-1;  %y0����һ��λ���룬�������ߵ�ȦȦ
         plot(x0,y0,'ro');hold on;pause(delay);  %����ȦȦ����ȦȦ��ʱ��������ͣ0.03s
      else  %���r�����еĵ�j��Ԫ��Ϊ1
         x0=x0+aa;y0=y0-bb;  % �������ƶ�
         plot(x0,y0,'ro');hold on;pause(delay);  %����ȦȦ����ȦȦ��ʱ��������ͣ0.03s
         y0=y0-1;  %y0����һ��λ���룬�������ߵ�ȦȦ
         plot(x0,y0,'ro');hold on;pause(delay);  %����ȦȦ����ȦȦ��ʱ��������ͣ0.03s
      end  
   end  
   for m=1:5  % m ѭ�� ��1��5
      text((m-3)*sqrt(3),-6.5,num2str(n(m)));  % ��׶˵�λ����ʾ�ַ������������ʵʱ�����
   end  
   pause(10*delay);  %��ͣ ʱ��10*0.03=0.3s
end  