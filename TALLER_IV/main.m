###########################
##------Ejercicio 1------##
###########################
disp("##------Ejercicio 1------##")
A=[5,7,0;
   0,2,4;
   0,-6,8];
   
b=[0;0;0];

[system, indepent]=GaussClasico(A,b);
disp("\n SISTEMA:")
disp(system)
disp("\n TERMINO INDEPENDIENTE:")
disp(indepent)
disp("\n")
solucion = GaussTrianguloSuperior(system,indepent);
disp(" EL RESULTADO DEL EJERCICIO UNO ES:")
disp(solucion)

###########################
##------Ejercicio 2------##
###########################
disp("\n")
disp("##------Ejercicio 2------##")
##PARA SABER EL VALOR DE 'h' SE HACE EL DET DE LA MATRIZ Y SE IGUALA  A 0
h = 86/11;

A2=[1,2,5;
    -3,5,-7;
    2,1,h];
    
b2=[0;0;0];

[system2, indepent2]=GaussClasico(A,b);
disp("\n SISTEMA:")
disp(system2)
disp("\n TERMINO INDEPENDIENTE:")
disp(indepent2)
disp("\n")
solucion2 = GaussTrianguloSuperior(system2,indepent2);
disp(" EL RESULTADO DEL EJERCICIO DOS ES:")
disp(solucion2)




