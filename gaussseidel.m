a=input('enter matrix a');
b=input('enter matrix b');
p=input('enter matrix c');
N=input('enter no of iterations');
n=length(b);
x=zeros(n,1);
y=p;
for j=1:N
    for i=1:n
        x(i)=(b(i)-a(i,[1:i-1,i+1:n])*p([1:i-1,i+1:n]))/a(i,i);
        p(i)=x(i);  
    end
      
        if(abs(x-y)<=0.0001)
            break
        end
        y=x;
end
disp(x);