function a=myfit(x1,f,phi)%x1:结点，phi:基函数
syms x;
P=eval(subs(phi,x,x1'))'%第i行:phi_i(x)
 A=P*P';
 b=P*f';
a=A\b;
end 