function a=schmitfit(x1,f,phi)%x1:��㣬phi:������
syms x;
P=eval(subs(phi,x,x1'))';%��i��:phi_i(x)
 %A=P*P';
 n=length(phi);
 Psi=zeros(n,length(x1));
 Psi(1,:)=P(1,:);
 for i=2:n
     s=0;
     for j=1:i-1;
         s=s-(P(i,:)*Psi(j,:)')/(Psi(j,:)*Psi(j,:)')*Psi(j,:);
     Psi(i,:)=P(i,:)+s;
     end
 end
 a=Psi*Psi';
end 