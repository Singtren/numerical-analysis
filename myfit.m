function a=myfit(x1,f,phi)%x1:��㣬phi:������
syms x;
P=eval(subs(phi,x,x1'))'%��i��:phi_i(x)
 A=P*P';
 b=P*f';
a=A\b;
end 