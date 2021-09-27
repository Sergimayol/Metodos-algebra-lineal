######################################################
######################################################                       
##---------------SOLUCION EJERCICIO 1---------------##
######################################################
######################################################
disp("SOLVING EXERCISE 1")

initial_vector = [5/2;7/3;11/4];
vadermonde_1 = generate_vandermonde_matrix(initial_vector);
independent_vector_1 = [1;2;3];
real_solution_1 = [168/5;-842/5;212];

##SOLUCION CON GAUSS CLASICO
[system_gauss, independent_gauss]=GaussClasico(vadermonde_1, independent_vector_1);
solution_gauss_1 = GaussTrianguloSuperior(system_gauss, independent_gauss);

[abs_error_gauss, rel_error_gauss] = compute_errors(real_solution_1,solution_gauss_1);

##MATRIZ DE VANDERMONDE
disp("\n")
disp("MATRIZ DE VANDERMONDE:")
disp(vadermonde_1)
disp("\n")

##MATRIZ DE GAUSS + TERMINO INDEPENDIENTE
disp("MATRIZ DE GAUSS:")
disp(system_gauss)
disp("TERMINO INDEPENDIENTE DE GAUSS:")
disp(independent_gauss)
disp("\n")

#SOLUCION DEL EJERCICIO USANDO GAUSS CLASICO
disp("Using Gauss method the solution is:")
disp(solution_gauss_1)
disp("Absolute error made with Gauss method:")
disp(abs_error_gauss)
disp("Relative error made with Gauss method:")
disp(rel_error_gauss)
disp("\n")

##SOLUCION CON GAUSS POR COLUMNAS
[system_pivoting, independent_pivoting]=GaussColumnPivoting(vadermonde_1, independent_vector_1);
solution_pivoting_1 = GaussTrianguloSuperior(system_pivoting, independent_pivoting);

[abs_error_pivoting, rel_error_pivoting] = compute_errors(real_solution_1,solution_pivoting_1);

##MATRIZ DE GAUSS POR COLUMNAS + TERMINO INDEPENDIENTE
disp("MATRIZ DE GAUSS POR PIVOTACION DE COLUMNAS:")
disp(system_pivoting)
disp("TERMINO INDEPENDIENTE DE GAUSS:")
disp(independent_pivoting)
disp("\n")

##SOLUCION DEL EJERCICIO USANDO GAUSS POR COLUMNAS
disp("Using column-pivoting method the solution is:")
disp(solution_pivoting_1)
disp("Absolute error made with Gauss method:")
disp(abs_error_pivoting)
disp("Relative error made with Gauss method:")
disp(rel_error_pivoting)
disp("\n")



######################################################
######################################################                       
##---------------SOLUCION EJERCICIO 2---------------##
######################################################
######################################################
disp("\n")
disp("SOLVING EXERCISE 2")

initial_vector_2 =[5/2; 7/3; 11/4; 13/5; 17/6; 19/7; 23/8; 29/9];
vadermonde_2 = generate_vandermonde_matrix(initial_vector_2);
independent_vector_2 = [1; 2; 3; 4; 5; 6; 7; 8];
real_solution_2 = [313592014347/340340; 
                   -457459856945933/25989600;
                   493563948366959513/3430627200; 
                   -197436771134498893/302702400; 
                   24307645219148215987/13722508800; 
                   -23727434239811381423/8233505280; 
                   915020783660384899/351859200; 
                   -485845220125397/483840];

##SOLUCION CON GAUSS CLASICO
[system_gauss, independent_gauss]=GaussClasico(vadermonde_2, independent_vector_2);
solution_gauss_2 = GaussTrianguloSuperior(system_gauss, independent_gauss);

[abs_error_gauss, rel_error_gauss] = compute_errors(real_solution_2,solution_gauss_2);

##MATRIZ DE VANDERMONDE
disp("\n")
disp("MATRIZ DE VANDERMONDE:")
disp(vadermonde_2)
disp("\n")

##MATRIZ DE GAUSS + TERMINO INDEPENDIENTE
disp("MATRIZ DE GAUSS:")
disp(system_gauss)
disp("TERMINO INDEPENDIENTE DE GAUSS:")
disp(independent_gauss)
disp("\n")

##SOLUCION DEL EJERCICIO USANDO CLASICO
disp("Using Gauss method the solution is:")
disp(solution_gauss_2)
disp("Absolute error made with Gauss method:")
disp(abs_error_gauss)
disp("Relative error made with Gauss method:")
disp(rel_error_gauss)
disp("\n")    

##SOLUCION CON GAUSS POR COLUMNAS
[system_pivoting, independent_pivoting]=GaussColumnPivoting(vadermonde_2, independent_vector_2);
solution_pivoting_2=GaussTrianguloSuperior(system_pivoting, independent_pivoting);

[abs_error_pivoting, rel_error_pivoting] = compute_errors(real_solution_2,solution_pivoting_2);

##MATRIZ DE GAUSS POR COLUMNAS + TERMINO INDEPENDIENTE
disp("MATRIZ DE GAUSS POR PIVOTACION DE COLUMNAS:")
disp(system_pivoting)
disp("TERMINO INDEPENDIENTE DE GAUSS:")
disp(independent_pivoting)
disp("\n")

#SOLUCION DEL EJERCICIO USANDO GAUSS POR COLUMNAS
disp("Using column-pivoting method the solution is:")
disp(solution_pivoting_2)
disp("Absolute error made with Gauss method:")
disp(abs_error_pivoting)
disp("Relative error made with Gauss method:")
disp(rel_error_pivoting)
disp("\n")
    
