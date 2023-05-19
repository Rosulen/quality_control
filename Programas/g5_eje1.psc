Algoritmo g5_eje1
//	Realizar un programa que rellene de números aleatorios una matriz a través de un
//	subprograma y generar otro subprograma que muestre por pantalla la matriz final.
	
	definir matriz,f,c Como Entero
	escribir "Escriba el número de filas y columnas:"
	leer f,c
	
	dimension matriz[f,c]
	
	llenar_matriz(matriz,f,c)
	
FinAlgoritmo

SubProceso llenar_matriz(matriz,f,c)
	definir i, j Como Entero
	
	para i=0 Hasta f-1
		para j=0 Hasta c-1
			matriz[i,j] = Aleatorio(1,9)
			mostrar_matriz(matriz,i,j)
		FinPara
		escribir " "
	FinPara
FinSubProceso

SubProceso Mostrar_matriz(matriz,i,j)	
	escribir "[ " matriz[i,j] " ]" Sin Saltar
FinSubProceso
	