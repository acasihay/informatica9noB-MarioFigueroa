Proceso Rotar_Vector_Izquierda
	// Declaramos el vector con Dimension
	Dimensionar vector(9);
	Definir i, tem, vector Como Entero; // Arreglo de 8 elementos
	// Ingresar los 8 números en el vector
	Para i<-1 Hasta 8 Con Paso 1 Hacer // Declaración de las variables
		Escribir 'Ingresa un número ';
		Leer vector[i];
	FinPara // Aquí utilizamos el vector correctamente
	// Guardar el primer elemento en una variable temporal
	tem <- vector[1];
	// Mover los elementos del vector una posición a la izquierda
	Para i<-1 Hasta 7 Con Paso 1 Hacer // Guardar el primer elemento
		vector[i] <- vector[i+1];
	FinPara // Desplazar los elementos a la izquierda
	// Colocar el primer elemento al final
	vector[8] <- tem;
	// Mostrar el vector resultante
	Escribir 'Vector rotado a la izquierda:'; // El primer elemento va al final
	Para i<-1 Hasta 8 Con Paso 1 Hacer
		Escribir vector[i];
	FinPara
FinProceso
