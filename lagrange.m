n=input('enter no of values');
for i=1:n
    x(i)=input('Enter the values');
    y(i)=input('Enter the values');
end
p=input('Enter the point');
for i=1:n
    l(i)=1;
    for j=1:n
        if(i~=j)
            l(i)=((p-x(j))/(x(i)-x(j)))*l(i);
        end

    end
end
sum=0;
for i=1:n
    sum=sum+y(i)*l(i);
end
disp(sum);