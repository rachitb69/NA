a=input('Enter the value of a');
b=input('Enter the value of b');
tol=input('Enter the value of tolerance');
f=@(x) x^2-29;
if(f(a)*f(b)>0)
    disp('roots doess not lie in interval');
else
    mid=(a+b)/2;
    err=abs(a-b);
    while(err>tol)
        if((f(a)*f(mid))<0)
            b=mid;
        else
            a=mid;
        end
        mid=(a+b)/2;
        err=abs(a-b);
    end
end
disp(mid);