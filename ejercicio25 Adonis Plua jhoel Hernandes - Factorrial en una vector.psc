Proceso FactorialesDeVector
	Definir numeros Como Entero;
	Dimension numeros[6];
	Definir factoriales Como Entero;
	Dimension factoriales[6];
	Definir i, j, factorial Como Entero;
	
	// ingrese 5 n�meros al vector 
	Para i <- 0 Hasta 4 Hacer
		Escribir "Ingrese el n�mero ", (i + 1), ":";
		Leer numeros[i];
	FinPara
	
	// Calcular el factorial de cada n�mero
	Para i <- 0 Hasta 4 Hacer
		factorial <- 1;
		si numeros[i] >= 0 entonces 
			para j <- 1 Hasta numeros[i] hacer 
			factorial <- factorial * j;
			FinPara
		sinO
			factorial <- -1; // si el numero es negativo, no se calcula el factorial 
			finsi 
		factoriales[i] <- factorial;
	FinPara
	
	// Mostrar el resultado
	Escribir "Los factoriales de los n�meros ingresados es:";
	Para i <- 0 Hasta 4 Hacer
		si factoriales[i] = -1 Entonces
			Escribir "El factorial de ", numeros[i], " no es posible ( numero negativo) ";
		SiNo
			Escribir "El factorial de ", numeros[i], " es: ", factoriales[i];
		finsi 
	FinPara
FinProceso


