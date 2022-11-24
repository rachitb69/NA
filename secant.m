f=@(x) x^2-17;
x0=input('Enter the value of a');
x1=input('Enter the value of b');
n=input('Enter the no of iterations');
tol=input('Enter the value of tolerance');
i=1;
while(i<=n)
    x2=x1-((x1-x0)/(f(x1)-f(x0)))*f(x1);
    err=abs(x2-x1);
    if(err<=tol)
        disp(x2);
        break
    end
    i=i+1;
    x0=x1;
    x1=x2;
end

