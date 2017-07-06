x=1:5;
y=[4 4.5 6 8 8.5];
A(1,1)=length(x);
A(1,2)=sum(x);
A(2,1)=sum(x);
A(2,2)=x*x';
b=[sum(y);x*y'];
sol=A\b;
xx=linspace(1,5,100);
yy=sol(2)*xx+sol(1);
plot(xx,yy)
hold on
plot(x,y,'o')

