SubProceso  acomodarPalabra(matriz,f,c,numF)
	
	Definir retorno, contador, poci, i, j Como Entero
	
	contador = numF
	
	retorno = buscarR(matriz,f,c,contador)
	
	Escribir retorno
	
	Si retorno <> 5 Entonces
		poci = abs(5 - retorno)
		Para i = 0 Hasta f - 1 Hacer
			Para j = c-1 Hasta 0 Con Paso -1 Hacer
				si i = contador y j > poci-1 Entonces
					matriz(i,j)=matriz(i,j-poci)
				SiNo
					si i = contador y j <= poci-1 Entonces
						matriz(i,j) = "*"
					FinSi
				FinSi
			FinPara
		FinPara
	FinSi
	
FinSubProceso

//// ******************** BUSCAR R **************************

Funcion buscar <- buscarR(matriz,f,c,numF)
	
	Definir i, j, contador, buscar Como Entero
	Definir palabra Como Caracter
	Definir contadorR Como Logico
	
	contadorR = Falso
	contador = 0
	
	Para i = 0 Hasta f - 1 Hacer
		Para j = 0 Hasta c - 1 Hacer
			Si i = numF  Entonces
				palabra = matriz(i,j)
				Si palabra = "R" y contadorR = Falso Entonces
					Escribir "La letra R esta en " contador
					contadorR = Verdadero
					buscar = contador
				FinSi
				contador = contador + 1
			FinSi
		FinPara
	FinPara
	
FinFuncion

//// ******************** AGREGAR PALABRA **************************

SubProceso agregarPalabra(matriz,f,c,palabra,numF)
	
	Definir i, j, aux Como Entero
	
	aux = 0
	
	Para i = 0 hasta f - 1 Hacer
		Para j = 0 hasta Longitud(palabra) - 1
			Si i = numF Entonces
				matriz(i,j) = Subcadena(palabra,aux,aux)
				aux = aux + 1
			FinSi
		FinPara
	FinPara
	
FinSubProceso

//// ******************** IMPRIMIR MATRIZ **************************

SubProceso imprimirMatriz(matriz,f,c)
	
	Definir i,j Como Entero
	
	Para i = 0 Hasta f - 1 Hacer
		Para j = 0 Hasta c - 1 Hacer
			Escribir "[" matriz(i,j) "]" Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso

//// ******************** INICIALIZAR MATRIZ **************************

SubProceso inicializarMatriz(matriz,f,c)
	
	Definir i, j Como Entero
	
	Para i = 0 Hasta f - 1 Hacer
		Para j = 0 Hasta c - 1 Hacer
			matriz(i,j) = "*"
		FinPara
	FinPara
	
FinSubProceso

//// ******************** ALGORITMO **************************

Algoritmo desafioGuia5
	
	Definir matriz, palabra Como Caracter
	Definir f, c Como Entero
	
	f=9
	c=12
	
	Dimension matriz(f,c)
	
	inicializarMatriz(matriz,f,c)
	imprimirMatriz(matriz,f,c)
	Escribir ""
	agregarPalabra(matriz,f,c,"VECTOR",0)
	agregarPalabra(matriz,f,c,"MATRIX",1)
	agregarPalabra(matriz,f,c,"PROGRAMA",2)
	agregarPalabra(matriz,f,c,"SUBPROGRAMA",3)
	agregarPalabra(matriz,f,c,"SUBPROCESO",4)
	agregarPalabra(matriz,f,c,"VARIABLE",5)
	agregarPalabra(matriz,f,c,"ENTERO",6)
	agregarPalabra(matriz,f,c,"PARA",7)
	agregarPalabra(matriz,f,c,"MIENTRAS",8)
	imprimirMatriz(matriz,f,c)
	
//	buscarR(matriz,f,c,0) //vector 5
// 	buscarR(matriz,f,c,1) //matrix 3 MOVER 2 A LA DERECHA
//	buscarR(matriz,f,c,2) //programa 1 MOVER 4 A LA DERECHA
//	buscarR(matriz,f,c,3) //subprograma 4 MOVER 1 A LA DERECHA
//	buscarR(matriz,f,c,4) //subproceso 4 MOVER 1 A LA DERECHA
//	buscarR(matriz,f,c,5) //variable 2 MOVER 3 A LA DERECHA
//	buscarR(matriz,f,c,6) //entero 4 MOVER 1 A LA DERECHA
//	buscarR(matriz,f,c,7) //para 2 MOVER 3 A LA DERECHA
//	buscarR(matriz,f,c,8) //mientras 5
	
	Escribir ""
	acomodarPalabra(matriz,f,c,1)
	acomodarPalabra(matriz,f,c,2)
	acomodarPalabra(matriz,f,c,3)
	acomodarPalabra(matriz,f,c,4)
	acomodarPalabra(matriz,f,c,5)
	acomodarPalabra(matriz,f,c,6)
	acomodarPalabra(matriz,f,c,7)
	imprimirMatriz(matriz,f,c)
	
FinAlgoritmo
//				subprograma acomodarPalabra:
//					Se le debe indicar sólo la matriz en donde se acomodarán las palabras.
//					Ahora debemos crear una lógica que nos permita mover las palabras de las filas. Recordar que
//					podemos llamar a buscarR para saber cuántos espacios hay que mover las palabras.
//					Una vez que las palabras se muevan hay que llenar los espacios con asteriscos nuevamente: es
//						decir, si la palabra se mueve dos posiciones a la derecha hay que agregar dos asteriscos a la
//							izquierda de la fila.
//						Nota: ¡recuerden que la primera letra ?R? debe quedar en la posición 5 de la matriz! Ya sabemos
//en qué posición se