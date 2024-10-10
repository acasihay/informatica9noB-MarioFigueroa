Proceso OrdenarVectorDescendente_Jeremias_Gutierrez_9noB
    Definir x, temp, vector, a Como Entero
	Dimension vector[10]
	Para x = 1 Hasta 10 Con Paso 1 Hacer
		 vector[x] = azar(30)
	FinPara

	para x = 1 Hasta 9 Con Paso 1 Hacer
		para a = 1 Hasta 9 Con Paso 1 Hacer
			si vector[a] < vector[a+1] Entonces
				temp = vector [a]
				vector[a] = vector[a+1]
				vector[a+1] = temp
			FinSi
			
			
		FinPara
	FinPara
	
	para x = 1 Hasta 10 Con Paso 1 Hacer
		Escribir vector[x]
	
		
	FinPara
FinProceso


		