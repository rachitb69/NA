a=input('enter matrix a');
b=input('enter matrix b');
N=input('enter no of iterations');
tol=input('Enter the value of tolerance');
for i=1:n
    v=a*b;
    x=max(abs(v));
    v1=v/x;
    if(abs(v1-b)<=tol)
        break;
    end
    b=v1;
end
disp(v1);
disp(x);