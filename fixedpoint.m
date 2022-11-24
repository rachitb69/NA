clc;
clear all;
f=@(x) atan(4*x);
a=input('Enter the starting value');
n=input('Enter the no of iterations');
tol=input('Enter the value of tolerance');
i=1;
x=f(a);
if(x==a)
    disp('root is a');
else
    while(i<=n)
        x=f(a);
        if(abs(x-a)<=tol)
            break;
        end
        a=x;
        i=i+1;
    end
end
disp(x);
