###############################
##----SOLUCION PROBLEMA 1----##
###############################

initial_vector = [1, 1, 0, 1;
2,1,-1,1;
-1,2,3,-1;
3,-1,-1,2];

independent_vector_1 = [2;1;4;-3];

##APARTADO A
[System,independent]=GaussColumnPivoting(initial_vector, independent_vector_1);
solucion = GaussTrianguloSuperior(System,independent);

disp("La matriz usando pivotaje por columnas da:")
disp("MATRIZ")
disp(System)
disp("TERMINO INDEPENDIENTE")
disp(independent)
disp("\n")
disp("LA SOLUCION DEL SISTEMA ES:")
disp(solucion)
disp("\n")

##APARTADO B
[System1,independent1]=GaussClasico(initial_vector, independent_vector_1);
solucion1= GaussTrianguloSuperior(System1,independent1);

disp("La matriz usando Gauss Clasico da:")
disp("MATRIZ")
disp(System1)
disp("TERMINO INDEPENDIENTE")
disp(independent1)
disp("\n")
disp("LA SOLUCION DEL SISTEMA ES:")
disp(solucion1)
disp("\n")

###############################
##----SOLUCION PROBLEMA 2----##
###############################

##APARTADO A
termino_independiente = [0.1108033125;
0.2033079999999999;
2.1;
482358.0999999999;
22421268896.09999847412109375;
20237736065565540.0];
vector = [0.05;0.3;1;15;130;2021];
vadermonde_1 = generate_vandermonde_matrix(vector);
vadermonde_1= fliplr(vadermonde_1);
disp(vadermonde_1)

##APARTADO B
[System2,independent2]=GaussMaximalPivoting(vadermonde_1, termino_independiente);
solucion2= GaussTrianguloSuperior(System2,independent2);
disp("La matriz usando pivotaje por columnas da:")
disp("MATRIZ")
disp(System2)
disp("TERMINO INDEPENDIENTE")
disp(independent2)
disp("\n")
disp("LA SOLUCION DEL SISTEMA ES:")
disp(solucion2)
disp("\n")

##APARTADO C
[System3,independent3]=GaussClasico(vadermonde_1, termino_independiente);
solucion3= GaussTrianguloSuperior(System3,independent3);

disp("La matriz usando Gauss Clasico da:")
disp("MATRIZ")
disp(System3)
disp("TERMINO INDEPENDIENTE")
disp(independent3)
disp("\n")
disp("LA SOLUCION DEL SISTEMA ES:")
disp(solucion3)
disp("\n")

##APARTADO D









