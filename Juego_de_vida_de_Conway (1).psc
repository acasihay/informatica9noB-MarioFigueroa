Proceso Juego_de_vida_de_Conway
    Definir T Como Cadena;
    Definir F, C, L1, D, X, i, j, g, v Como Entero;
    Dimension T(12,51);  F <- 1;  C <- 1;L1 <- 1;x <- 0;g <- 0;
    Escribir "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50";
    Para F <- 1 Hasta 11 Con Paso 1 Hacer
        Para C <- 1 Hasta 50 Con Paso 1 Hacer
            T[F, C] <- ". "; 
        FinPara
    FinPara
Para F <- 1 Hasta 11 Con Paso 1 Hacer
        Para C <- 1 Hasta 50 Con Paso 1 Hacer
            Escribir T[F, C], Sin Saltar;
        FinPara
        Escribir '------------------------------------- ', L1;
        L1 <- L1 + 1;
    FinPara
    Escribir '¿Cuántas células deseas ingresar?';Leer D;
    Mientras D <= 0 Hacer
        Escribir "Ese número no es válido, prueba con otro.";
        Leer D;
    FinMientras
		Repetir
			Escribir 'Ingresa las coordenadas donde quieres crear una célula:';
			Escribir 'Ingresa la fila (1..11)';
			Leer F;
			Escribir 'Ingresa la columna (1..50)';
			Leer C;
			Mientras F < 1 O F > 11 Hacer
				Escribir 'Error: Ingresa una fila válida (1..11)';
				Leer F;
			FinMientras
			Mientras C < 1 O C > 50 Hacer
				Escribir 'Error: Ingresa una columna válida (1..50)';Leer C;
			FinMientras
			T[F, C] <- "o ";  
			Para i <- 1 Hasta 11 Con Paso 1 Hacer
				Para j <- 1 Hasta 50 Con Paso 1 Hacer
					Escribir T[i, j], Sin Saltar;
				FinPara
				Escribir "";  
			FinPara ;D <- D - 1;  Hasta Que D = 0
		Escribir "Cuantas generaciones quieres ver?";Leer x;
		Repetir
			Para F <- 1 Hasta 11 Con Paso 1 Hacer
				Para C <- 1 Hasta 50 Con Paso 1 Hacer
					v <- 0;
					Para i <- F-1 Hasta F+1 Con Paso 1 Hacer
						Para j <- C-1 Hasta C+1 Con Paso 1 Hacer
							Si i >= 1 Y i <= 11 Y j >= 1 Y j <= 50 Entonces
								Si (i <> F O j <> C) Y T[i, j] = "o " Entonces
									v <- v + 1;
								FinSi
							FinSi
						FinPara
					FinPara
					Si T[F, C] = "o " Entonces
						Si v < 2 O v > 3 Entonces
							T[F, C] <- ". "; 
						FinSi
					SiNo
						Si v = 3 Entonces
							T[F, C] <- "o ";  
						FinSi
					FinSi
				FinPara
			FinPara
			Escribir "-----------------------------------------------------------------------------", "generación ", G;
			G<-G+1;
			Para i <- 1 Hasta 11 Con Paso 1 Hacer
				Para j <- 1 Hasta 50 Con Paso 1 Hacer
					Escribir T[i, j], Sin Saltar;
				FinPara
				Escribir "";  
			FinPara
			Esperar 0.5 Segundos;
			x<-x-1;
		Hasta Que x = 0
		Escribir 'Fin de la simulación.';
FinProceso