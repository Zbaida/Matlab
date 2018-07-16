

A=[4 -2 1;-2 10 -2;-2 -5 5];
b=[2;3;4];

N=max(size(A));
maxI=1000;
eps=0;

[x,Niter,err]=Jacobi( A,b,N,eps,maxI);
[x2,Niterr2,err2]=gauss_Seidel( A,b,N,eps,maxI );

figure
plot(1:N:Niter,err(1:N:Niter));
hold 
plot(1:N:Niterr2,err2(1:N:Niterr2));

legend('Jacobi',' Gauss Seidel')
ylabel('Erreur')
xlabel('iterations')


