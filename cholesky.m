function [L,d] = cholesky(A)
n=length(A);
L=eye(n);
t=zeros(n,n);
d=zeros(1,n);
d(1)=A(1,1);
t(1,1)=A(1,1);
L(2:n,1)=A(2:n,1)/d(1);
t(2:n,1)=A(2:n,1);
for k=2:n
    d(k)=A(k,k)-t(k,1:k-1)*L(k,1:k-1)';
    for i=k+1:n
        t(i,k)=A(i,k)-t(i,1:k-1)*L(k,1:k-1)';
        L(i,k)=t(i,k)/d(k);
    end
end

end

