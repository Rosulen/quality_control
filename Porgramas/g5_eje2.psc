Algoritmo g5_eje2
//	Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario), llenarla
//	con números aleatorios entre 1 y 100 y mostrar su traspuesta.
	
	definir matriz,f,c Como Entero
	escribir "Escriba el número de filas y columnas:"
	leer f,c 
	
	dimension matriz[f,c]
	llenar_matriz(matriz,f,c)
	transponer(matriz,f,c)
	
FinAlgoritmo

SubProceso llenar_matriz(matriz,f,c)
	definir i, j Como Entero
	
	escribir "Matriz original"
	
	para i=0 Hasta f-1
		para j=0 Hasta c-1
			matriz[i,j] = Aleatorio(1,100)
			escribir matriz[i,j] "  " Sin Saltar
		FinPara
		escribir ""
	FinPara
	
FinSubProceso

SubProceso transponer(matriz,f,c)
	definir i, j, matrizt Como Entero
	Dimension matrizt[c,f]
	
	escribir "Matriz transpuesta"
	
	para i=0 Hasta f-1
		para j=0 Hasta c-1
			matrizt[j,i] = matriz[i,j]
		FinPara
	FinPara
	
	para i=0 Hasta c-1
		para j=0 Hasta f-1
			escribir matrizt[i,j] " " Sin Saltar
		FinPara
		escribir " "
	FinPara
	
FinSubProceso