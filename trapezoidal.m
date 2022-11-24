f=@(x) (cos(x))^2;
a=input('Enter the value of a');
b=input('Enter the value of b');
n=input('Enter the no of subintervals');
h=(b-a)/n;
sum=0;
for i=1:n-1
    x(i)=a+h*i;
    y(i)=f(x(i));
    sum=sum+2*y(i);
end
sum=sum+f(a)+f(b);
sum=sum*(h/2);
disp(sum);