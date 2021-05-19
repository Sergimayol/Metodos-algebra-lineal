#ESTE PROGRAMA REALIZA GAUSS TRIÁNGULO INFERIOR A PARTIR DE UNA MATRIZ Y VETCOR
function x = GaussTrianguloInferior(A,b)
  #Generar el tamaño de la matriz
  [n n]=size(A);
  #A será la matriz aumentada
  A = [A b];
  #Generamos una matriz x que nos almacene las variables
  x=zeros(n,1);
  x(1)=A(1,n+1)/A(1,1);
  #Valores de i
  for i=2:n
    s=0;
    #Valores de j
    for j=1:n-1
      s=s+A(i,j)*x(j);
    endfor
    #Resultado
    x(i)=(A(i,n+1)-s)/A(i,i);
  endfor
 endfunction