Algoritmo g5_eje3
	
//	Realizar un programa que cree una matriz de 5x15 y deberemos llenar la matriz de unos y
//	ceros. Llenando el marco o la delimitación externa de la matriz de unos y la parte interna de
//	ceros.
	
	definir matriz,f,c Como Entero
	Escribir "Digite las filas y columnas:"
	leer f,c
//	dimension matriz[5,15]
	dimension matriz[f,c]
	
	rellenar(matriz,f,c)
	
FinAlgoritmo

SubProceso rellenar(matriz,f,c)
	Definir i, j Como entero
	para i = 0 hasta f-1
		
		para j=0 hasta c-1
			matriz[i,j] = 0
			si i = 0 o i = f-1 entonces
				matriz[i,j] = 1
			SiNo
				si j = 0 o j = c-1 Entonces
					matriz[i,j] = 1
				FinSi
			FinSi
			Escribir matriz[i,j] " " Sin Saltar
		FinPara
		Escribir " "
	FinPara
FinSubProceso
	