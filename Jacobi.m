function [x,Niter,erj] = Jacobi( A,b,N,eps,maxIter)
x2=zeros(N,1);
x=zeros(N,1);
Niter=maxIter;
norm=Inf;
erjtmp=[];
for iter=1:maxIter
    x=x2;
   for i=1:N
    s=0;
    for j=1:N
        if i~=j
            s=s+A(i,j)*x(j);
        end
    end
    x2(i)=(b(i)-s)/A(i,i);
   end
   norm=abs(x2-x);
   erjtmp=[erjtmp;norm];
   erj=erjtmp;
   if norm<=eps
       x=x2;
       Niter=iter;
       return;
   end 
end
end

