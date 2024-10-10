Proceso Tres_en_rayas
	Definir Tab1 Como Entero;
	Definir Tab2 Como Caracter;
	Dimension Tab1[3,3];
	Dimension Tab2[3,3];
	Definir i, j, CantTurnos, Valor, Pos Como Entero;
	Definir Objetivo, aux_i, aux_j, aux_d1, aux_d2 Como Entero;
	Definir Terminado, HayGanador Como Logico;
	Definir Ficha Como Caracter;;
	Para i <- 0 Hasta 2 Hacer
		Para j <- 0 Hasta 2 Hacer
			Tab1[i,j] <- 0;
			Tab2[i,j] <- " ";
		FinPara
	FinPara
	Terminado <- Falso;
	HayGanador <- Falso;
	CantTurnos <- 0;
	
	Mientras ~ Terminado hacer
		Borrar Pantalla;
		Escribir "   ",Tab2[0,0],"|",Tab2[0,1],"|",Tab2[0,2];
		Escribir "   ","_", "+", "_", "+", "_"; 
		Escribir "   ",Tab2[1,0],"|",Tab2[1,1],"|",Tab2[1,2];
		Escribir "   ","_", "+", "_", "+", "_"; 
		Escribir "   ",Tab2[2,0],"|",Tab2[2,1],"|",Tab2[2,2];

		
		Si ~ HayGanador y CantTurnos<9 Entonces
			
			CantTurnos <- CantTurnos+1;
			Si CantTurnos%2=1 Entonces
				Ficha <- 'X'; Valor <-  1; Objetivo <- 1;
				Escribir "Turno del jugador 1 (X)";
			SiNo
				Ficha <- 'O'; Valor <-  2; Objetivo <- 8;
				Escribir "Turno del jugador 2 (O)";
			FinSi
			
			Escribir "Ingrese la Posición (1-9):";
			
			Repetir
				Leer Pos;
				Si Pos<1 o Pos>9 Entonces
					Escribir "Posición incorrecta, ingrese nuevamente: ";
					Pos <- 99;
				SiNo
					i <- trunc((Pos-1)/3);
					j <- ((Pos-1) MOD 3);
					Si Tab1[i,j]<>0 Entonces
						pos <- 99;
						Escribir "Posición incorrecta, ingrese nuevamente: ";
					FinSi
				FinSi
			Hasta Que Pos<>99
	
			Tab1[i,j] <- Valor;
			Tab2[i,j] <- Ficha;
			
			aux_d1 <- 1; aux_d2 <- 1;
			Para i <- 0 hasta 2 hacer
				aux_i <- 1; aux_j <- 1;
				aux_d1 <- aux_d1*Tab1[i,i];
				aux_d2 <- aux_d2*Tab1[i,2-i];
				Para j <- 0 hasta 2 hacer
					aux_i <- aux_i*Tab1[i,j];
					aux_j <- aux_j*Tab1[j,i];
				FinPara
				Si aux_i=Objetivo o aux_j=Objetivo Entonces
					HayGanador <- Verdadero;
				FinSi
			FinPara
			Si aux_d1=Objetivo o aux_d2=Objetivo Entonces
				HayGanador <- Verdadero;
			FinSi
		SiNo
			Si HayGanador Entonces
				Escribir "Hay ganador: " sin saltar;
				Si CantTurnos%2=1 Entonces
					Escribir "Jugador 1!";
				SiNo
					Escribir "Jugador 2!";
				FinSi
			SiNo
				Escribir "Empate!";
			FinSi
			Terminado <- Verdadero;
		FinSi
	FinMientras
FinProceso
