f=@(t,y) -y+2*cos(t);
a=input('enter the starting of interval');
b=input('enter the end of interval');
h=input('Enter the step size');
n=(b-a)/h;
t=a:h:b;
y=zeros(size(t));
y(1)=1;
for i=1:n
    k1=h*f(t(i),y(i));
    k2=h*f(t(i)+h/2,y(i)+k1/2);
    k3=h*f(t(i)+h/2,y(i)+k2/2);
    k4=h*f(t(i)+h,y(i)+k3);
    k=(k1+2*k2+2*k3+k4)/6;
    y(i+1)=y(i)+k;
end
disp(y);
