%%%%%%%% PARÁMETROS DEL PROBLEMA %%%%%%%%

% Extremos de x
a = 1;
b = 3;

% Extremo de t
T = 3;

% Parámetros de malla
M = 50;
N = 50;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[x_grid , t_grid , U] = solve_heat_equation (a,b,T,M,N);

plot_heat_solution(x_grid , t_grid , U)