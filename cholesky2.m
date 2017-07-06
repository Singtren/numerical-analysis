function [L,d] = cholesky2(A )
n=length(A);
L=eye(n);
d=zeros(1,n);
d(1)=A(1,1);
L(2:n,1)=A(2:n,1)/d(1);
for k=2:n-1
    d(k)=A(k,k)-L(k,1:k-1)*diag(d(1:k-1))*L(k,1:k-1)';
    L(k+1:n,k)=(A(k+1:n,k)-L(k+1:n,1:k-1)*diag(d(1:k-1))*L(k,1:k-1)')/d(k);
end
k=n;
d(k)=A(k,k)-L(k,1:k-1)*diag(d(1:k-1))*L(k,1:k-1)';
end