function [x_grid, t_grid, U] = solve_heat_equation(a, b, T, M, N)
  % This function solves the heat partial differential equation over a rectangle.
  h=(b-a)/N;
  k=T/M;
  r=k/(h**2);
  
  x_grid  = linspace(a,b,N+1);
  t_grid  = linspace(0,T,M+1);
  
  U = zeros (N+1, M+1);
  W = zeros (N-1, N-1);
  
  % Aqui esta inicialmente el vector U_1 de la solución
  for i = 2:N
    U(i,1) = initial_temperature_distribution(x_grid(i));
  endfor
  
  %Diagonal principal
  for i=1:N-1    
    W(i,i)= 1+r*2;
  endfor
  
  %Diagonal superior
  for i=2:N-1   
    W(i-1,i)= -r;
  endfor
  
  %Diagonal inferior
  for i=1:N-2
    W(i+1,i)= -r;
  endfor
  
  for j = 2:M+1
    U(2:N,j)= inv(W)*U(2:N, j-1);
  endfor
  
endfunction

function value = initial_temperature_distribution(x)
  % This function implements the g(x) function, known as the initial 
  % distribution temperature.
  value = x*(1-x);
  return;
endfunction