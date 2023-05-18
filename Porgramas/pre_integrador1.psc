Algoritmo pre_integrador
	
	definir matriz,muestra Como Caracter
	definir f,c Como Entero
//	escribir "Ingrese la muestra:"
	//	leer muestra
	

	muestra = "ACDDCADBCDABDBBA"
	
	si Longitud(muestra) = 9 o Longitud(muestra) = 16 o Longitud(muestra) = 1369 entonces
		escribir "La muestra se está procesando"
		f = raiz(Longitud(muestra))
		c = raiz(Longitud(muestra))
		Dimension matriz[f,c]
		organizar_muestra(muestra,matriz,f,c)
	SiNo
		escribir "La muestra no es valida"
	FinSi	
	
FinAlgoritmo

SubProceso organizar_muestra(muestra,matriz,f,c)
	definir i,j,pos Como Entero
	escribir "El resultado de la muestra es:"
	pos = 0
	para i=0 hasta f-1 Hacer
		para j=0 hasta c-1 Hacer
			matriz[i,j] = Subcadena(muestra, pos, pos)
			pos = pos + 1
			escribir matriz[i,j] Sin Saltar
		FinPara
		escribir ""
	FinPara
	
	detectar_genz(matriz,f,c)
FinSubProceso

SubProceso detectar_genz(matriz,f,c)
	definir i, j, gen como entero
	gen = 0
	para i=0 hasta f-1 Hacer
		para j=0 hasta c-1 Hacer
			si i = j Entonces
				si matriz[i,j] = "A" Entonces
					gen = gen + 1
				FinSi
			FinSi
			si i + j = f-1 Entonces
				si matriz[i,j] = "D" Entonces
					gen = gen + 1
				FinSi
			FinSi
		FinPara
	FinPara

	escribir ""

	si gen = f * 2 Entonces
		escribir "Se detecó el gen Z"
	FinSi
FinSubProceso
	