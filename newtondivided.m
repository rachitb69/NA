n=input('Enter no of values');
for i=1:n
    x(i)=input('Enter the values');
    y(i)=input('Enter the values');
end
p=input('Enter the point');
for i=1:n
    D(i,1)=y(i);
end
for j=2:n
    for i=j:n
        D(i,j)=(D(i,j-1)-D(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
disp(D);
prod = 1;
sum=D(1,1);
for i=2:n
    prod=prod*(p-x(i-1));
    sum=sum+prod*D(i,i);
end
disp(sum);