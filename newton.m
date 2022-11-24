syms x;
z=cos(x)-x*exp(x);
f=inline(z);    
x0=input('Enter the value of a');
n=input('Enter the no of iterations');
tol=input('Enter the value of tolerance');
dif=diff(sym(z));
d=inline(dif);
i=1;
while(i<=n)
    x1=x0-((f(x0)/d(x0)));
    err=abs((x1-x0)/x1);
    if(err<=tol)
        disp(x1);
        break
    end
    x0=x1;
    i=i+1;
end
