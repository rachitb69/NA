a=input('Enter the value of a');
n=input('Enter the no of iterations');
tol=input('Enter the value of tolerance');
f=@(x) atan(4*x);
x=f(a);
i=1;
while(i<=n)
    x=f(a);
    if(abs(x-a)<=tol)
        disp(x);
        break;
    end
    i=i+1
    a=x;
end
