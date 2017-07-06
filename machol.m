function [x,l,d]=machol(A,b)
n=length(b);
[l,d]=cholesky(A);
y=zeros(n,1);
y(1)=b(1);
for i=2:n
    y(i)=b(i)-l(i,1:i-1)*y([1:i-1]);
end
for i=1:n
    z(i)=y(i)/d(i);
end
ll=l';
x=zeros(n,1);
x(n)=z(n);
for i=(n-1):-1:1
    x(i)=z(i)-ll(i,i+1:n)*x(i+1:n);
end
x=x';
end