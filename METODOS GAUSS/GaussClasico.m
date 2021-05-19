#METODO DE GAUSS SIMPLE
function[A,b]=GaussClasico(A,b)
  n=length(b);
  for j = 1:n-1
    for k = j+1:n
      al=-A(k,j)/A(j,j);
      for m = j:n
        A(k,m)=A(k,m)+al*A(j,m);
      endfor
      b(k)= b(k)+al*b(j);
    endfor
  endfor
endfunction
