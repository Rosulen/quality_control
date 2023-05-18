Algoritmo g5_eje4
//	Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3.
//	Inicialice las matrices para evitar el ingreso de datos por teclado.
	
	definir m1, m2, m_producto Como Entero
	Dimension m1[3,3], m2[3,3], m_producto[3,3]
	
	rellenar(m1,m2,m_producto)
	
FinAlgoritmo
SubProceso rellenar(m1,m2,m_producto)
	definir i, j Como Entero
	
	para i=0 Hasta 2
		para j=0 hasta 2
			m1[i,j] = Aleatorio(1,9)
			m2[i,j] = Aleatorio(1,9)
			m_producto[i,j] = m1[i,j] * m2[i,j]
		FinPara
	FinPara
	
	escribir "Matriz 1"
	imp(m1)
	escribir "Matriz 2"
	imp(m2)
	escribir "Producto entre las matrices 1 y 2"
	imp(m_producto)
	
FinSubProceso

SubProceso imp(m)
	
	definir i, j Como Entero
	para i=0 Hasta 2
		para j=0 hasta 2
			escribir m[i,j] "  " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso
	