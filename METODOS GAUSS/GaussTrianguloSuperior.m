#ESTE PROGRAMA REALIZA GAUSS TRI�NGULO SUPERIOR A PARTIR DE UNA MATRIZ Y VETCOR
function[x]=GaussTrianguloSuperior(U,b)
 n=length(b);
x=zeros(n,1);
for k=n:-1:1;
  x(k)=b(k)/U(k,k);
  for i=1:k-1;
    b(i)= b(i)-x(k)*U(i,k);
  end
end