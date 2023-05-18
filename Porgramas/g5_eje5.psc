Algoritmo g5_eje6
//	Realizar un programa que permita visualizar el resultado del producto de una matriz de
//	enteros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden
//	inicializarse evitando así el ingreso de datos por teclado.
	
	definir matriz, vector Como Entero
	Dimension matriz[3,3], vector[3,1]
	
	rellenar(matriz,vector)
	
FinAlgoritmo

SubProceso rellenar(m,v)
	Definir i,j Como Entero
	
	// Llenar matriz y vector
	para i=0 hasta 2
		para j=0 hasta 2
			m[i,j] = Aleatorio(1,9)
			si j = 0 Entonces
				// Llenar vector solo cuando la columna sea 0 
				v[i,j] = Aleatorio(1,9)
			FinSi
		FinPara
	FinPara
	escribir "La matriz es:"
	ver(m,3,3)
	escribir ""
	escribir "El vector es:"
	ver(v,3,1)
	pp(m,v)
FinSubProceso

SubProceso pp(m,v)
	Definir  i,j,producto, n Como Entero
	n = 0
	Dimension producto[3,1]
	Escribir ""
	para i=0 hasta 2
		para j=0 hasta 2
			n = n + ( m[i,j] * v[j,0] )
			si j < 2
				escribir  m[i,j] "*" v[j,0] "+" Sin Saltar
			SiNo
				si j = 2
					escribir  m[i,j] "*" v[j,0] "=" n
				FinSi
			FinSi
			si j = 2 Entonces
				producto[i,0] = n // poner en la posición si ya se hizo el producto
			FinSi
			
		FinPara
	FinPara
	escribir ""
	Escribir "El Producto entre la matriz y el vector"
	ver(producto,3,1)
FinSubProceso

SubProceso ver(x,f,c)
	definir i, j Como Entero
	para i=0 Hasta f-1
		para j=0 hasta c-1
			escribir x[i,j] "  " Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso

	