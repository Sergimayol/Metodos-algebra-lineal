#ESTE PROGRAMA GENERA UNA MATRIZ DE VANDERMONDE 
function vandermonde=generate_vandermonde_matrix(vector)
  [rows, columns]=size(vector);
  #SON EQUIVALENTES
  #rows = length(vector);
  vandermonde = zeros(rows);
  for i=1:rows
    for j=1:rows
      vandermonde(j,i) =  vector(j)**(rows-i);
    endfor
  endfor
endfunction