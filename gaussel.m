a=input('enter matrix a');
b=input('enter matrix b');
n=length(b);
x=zeros(n,1);
for(i=1:n)
    if(a(i,i)==0)
        for(p=i+1:n)
            if(a(p,i)~=0)
                t=a(p,:);
                a(p,:)=a(i,:);
                a(i,:)=t;
                w=b(p);
                b(p)=b(i);
                b(i)=w;
            end
        end
    end
    for j=i+1:n
        f=a(j,i)/a(i,i);
        a(j,:)=a(j,:)-f*a(i,:);
        b(j)=b(j)-f*b(i);
    end
end
disp(a);
for i=n:-1:1
    x(i)=(b(i)-a(i,i+1:n)*x(i+1:n))/a(i,i);
end
disp(x);