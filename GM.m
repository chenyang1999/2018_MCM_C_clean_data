function G=GM(x,iter)
syms a b;
c=[a b]';
A=x(iter:iter+7,3);
A=A.';
B=cumsum(A);  
n=length(A);
for i=1:(n-1)
    C(i)=(B(i)+B(i+1))/2; 
end
D=A;D(1)=[];
D=D';
E=[-C;ones(1,n-1)];
c=inv(E*E')*E*D;
c=c';
a=c(1);b=c(2);
F=[];F(1)=A(1);
for i=2:(n+3)  
    F(i)=(A(1)-b/a)/exp(a*(i-1))+b/a;
end
G=[];G(1)=A(1);
for i=2:(n+3)  
    G(i)=F(i)-F(i-1);  
end
t1=2010:2017;
t2=2010:2020;  
G=G.';
end

